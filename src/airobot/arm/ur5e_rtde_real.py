"""
A UR5e robot arm
"""
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import copy
import numbers
import time

import airobot as ar
import airobot.utils.common as arutil
import numpy as np
import rospy
from airobot.arm.single_arm_ros import SingleArmROS
from airobot.utils.arm_util import wait_to_reach_ee_goal
from airobot.utils.arm_util import wait_to_reach_jnt_goal
from airobot.utils.common import print_red
from airobot.utils.moveit_util import moveit_cartesian_path
from airobot.utils.ros_util import kdl_frame_to_numpy
from airobot.utils.message_converter import convert_ros_message_to_dictionary
from std_msgs.msg import String
from trajectory_msgs.msg import JointTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint
from geometry_msgs.msg import WrenchStamped
import threading
from collections import deque
from airobot.utils.common import load_class_from_path

try:
    import rtde_control
    import rtde_receive
except ImportError:
    print("Unable to import rtde packages")

import signal
from contextlib import contextmanager

class TimeoutException(Exception): pass

@contextmanager
def time_limit(seconds):
    def signal_handler(signum, frame):
        raise TimeoutException("Timed out!")
    signal.signal(signal.SIGALRM, signal_handler)
    signal.alarm(seconds)
    try:
        yield
    finally:
        signal.alarm(0)

class UR5eRtdeReal:
    """
    A Class for interfacing with real UR5e robot using RTDE real time control library
    """

    def __init__(self,
                 configs,
                 **kwargs
                 ):
        self.robot_ip=configs.IP
        self.rtde_c = rtde_control.RTDEControlInterface(self.robot_ip)
        self.rtde_r = rtde_receive.RTDEReceiveInterface(self.robot_ip)

        self.configs = configs
        self._home_position = self.configs.ARM.HOME_POSITION

        if self.configs.HAS_EETOOL:
            cls_name = configs.EETOOL.CLASS
            from airobot.ee_tool import cls_name_to_path as ee_cls_name_to_path
            eetool_class = load_class_from_path(cls_name,
                                                ee_cls_name_to_path[cls_name])
            self.eetool = eetool_class(hostname=self.robot_ip,
                                       port=self.configs.EETOOL.PORT
                                       )

    def set_jpos(self, position, joint_name=None, wait=True, *args, **kwargs):
        """
        Method to send a joint position command to the robot (units in rad).

        Args:
            position (float or list or flattened np.ndarray):
                desired joint position(s)
                (shape: :math:`[6,]` if list, otherwise a single value).
            joint_name (str): If not provided, position should be a list and
                all actuated joints will be moved to specified positions. If
                provided, only specified joint will move. Defaults to None.
            wait (bool): whether position command should be blocking or non
                blocking. Defaults to True.

        Returns:
            bool: True if command was completed successfully, returns
            False if wait flag is set to False.
        """
        position = copy.deepcopy(position)
        self.rtde_c.moveJ(position)
        return True

    def get_ee_pose(self):
        pose = self.rtde_r.getActualTCPPose()
        print("RTDE Get EE Success")
        pos, quat = pose[:3], arutil.rotvec2quat(pose[3:])
        return np.array(pos), np.array(quat), None, None

    def set_ee_pose(self, pos=None, ori=None, wait=True,
                    ik_first=False, *args, **kwargs):
        """
        Set cartesian space pose of end effector.

        Args:
            pos (np.ndarray): Desired x, y, z positions in the robot's
                base frame to move to (shape: :math:`[3,]`).
            ori (np.ndarray, optional): It can be euler angles
                ([roll, pitch, yaw], shape: :math:`[4,]`),
                or quaternion ([qx, qy, qz, qw], shape: :math:`[4,]`),
                or rotation matrix (shape: :math:`[3, 3]`). If it's None,
                the solver will use the current end effector
                orientation as the target orientation.
            wait (bool): wait until the motion completes.
            ik_first (bool, optional): Whether to use the solution computed
                by IK, or to use UR built in movel function which moves
                linearly in tool space (movel may sometimes fail due to
                sinularities). This parameter takes effect only when
                self._use_urscript is True. Defaults to False.

        Returns:
            bool: Returns True is robot successfully moves to goal pose.
        """
        # import pdb
        # pdb.set_trace()
        if ori is None and pos is None:
            return True
        success = False
        if ori is None:
            pose = self.get_ee_pose()  # last index is euler angles
            quat = pose[1]
        else:
            quat = arutil.to_quat(ori)
        if pos is None:
            pose = self.get_ee_pose()
            pos = pose[0]

        pose = pos.tolist() + arutil.quat2rotvec(quat).tolist()
        # Why does it freeze here? FREEZE POINT
        assert len(pose) == 6
        try:
            with time_limit(2):
                self.rtde_c.moveL(pose)
                success = True
        except TimeoutException as e:
            print("Timed out!")
            success = False

        print("RTDE MOVEL SUCCESS")
        return success

    def rotate_z(self, delta_z):
        """

        :param delta_z: Change from current z-rotation in radians
        :return:
        """
        print("Rotate Delta Z " + str(delta_z))
        relative_rot = [0, 0, delta_z]
        current_pos, current_quat, _, _ = self.get_ee_pose()
        relative_quat = arutil.to_quat(relative_rot)
        self.set_ee_pose(pos=current_pos, ori=arutil.quat_multiply(relative_quat, current_quat))

    def move_ee_xyz(self, delta_xyz, eef_step=0.005, wait=True,
                    *args, **kwargs):
        """
        Move end effector in straight line while maintaining orientation.

        Args:
            delta_xyz (list or np.ndarray): Goal change in x, y, z position of
                end effector.
            eef_step (float, optional): Discretization step in cartesian space
                for computing waypoints along the path. Defaults to 0.005 (m).
            wait (bool, optional): True if robot should not do anything else
                until this goal is reached, or the robot times out.
                Defaults to True.

        Returns:
            bool: True if robot successfully reached the goal pose.
        """
        print("Move Delta XYZ " + str(delta_xyz))
        ee_pos, ee_quat, ee_rot_mat, ee_euler = self.get_ee_pose()

        ee_pos[0] += delta_xyz[0]
        ee_pos[1] += delta_xyz[1]
        ee_pos[2] += delta_xyz[2]
        success = self.set_ee_pose(ee_pos, ee_euler, wait=wait,
                                   ik_first=False)
        return success

    def speed_ee_xyz(self, delta_xyz, eef_step=0.005):
        print("Delta XYZ" + str(delta_xyz))

        assert type(delta_xyz) is list
        xd = delta_xyz + [0.0,0.0,0.0]
        self.rtde_c.speedL(xd)
        return True


    def go_home(self):
        """
        Move the robot to a pre-defined home pose.
        """
        self.set_jpos(self._home_position, wait=True)


    def scale_motion(self, **kwargs):
        print("Scale Motion not implemented yet")