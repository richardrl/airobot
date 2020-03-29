"""
Pybullet simulation environment of an ABB Yumi
robot.
"""
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import airobot.utils.common as arutil
from airobot.arm.dual_arm_pybullet import DualArmPybullet
from airobot.arm.single_arm_pybullet import SingleArmPybullet


class YumiPybullet(DualArmPybullet):
    """
    Class for pybullet simulation of ABB Yumi robot with
    separate functionality for both arms.

    Args:
        configs (YACS CfgNode): configurations for the arm.
        pb_client (BulletClient): pybullet client.
        seed (int): random seed.
        self_collision (bool): enable self_collision or
            not whiling loading URDF.
        eetool_cfg (dict): arguments to pass in the constructor
            of the end effector tool class.

    Attributes:
        right_arm (SingleArmPybullet): Right arm instance
        left_arm (SingleArmPybullet): Left arm instance
        robot_id (int): PyBullet body unique id of the robot

    """

    def __init__(self, configs, pb_client, seed=None,
                 self_collision=False,
                 eetool_cfg=None):
        super(YumiPybullet, self).__init__(configs=configs,
                                           pb_client=pb_client,
                                           seed=seed,
                                           self_collision=self_collision,
                                           eetool_cfg=eetool_cfg)
        right_cfg = configs.ARM.RIGHT
        left_cfg = configs.ARM.LEFT
        self.right_arm = SingleArmPybullet(configs=right_cfg,
                                           pb_client=pb_client,
                                           seed=seed,
                                           self_collision=self_collision,
                                           eetool_cfg=eetool_cfg)
        self.left_arm = SingleArmPybullet(configs=left_cfg,
                                          pb_client=pb_client,
                                          seed=seed,
                                          self_collision=self_collision,
                                          eetool_cfg=eetool_cfg)
        self.reset()

    def reset(self):
        """
        Reset the simulation environment.
        """
        self._pb.resetSimulation()

        yumi_pos = self.configs.ARM.PYBULLET_RESET_POS
        yumi_ori = arutil.euler2quat(self.configs.ARM.PYBULLET_RESET_ORI)
        if self._self_collision:
            colli_flag = {'flags': self._pb.URDF_USE_SELF_COLLISION}
            self.robot_body_id = self._pb.loadURDF(self.configs.PYBULLET_URDF,
                                              yumi_pos,
                                              yumi_ori,
                                              **colli_flag)
        else:
            self.robot_body_id = self._pb.loadURDF(self.configs.PYBULLET_URDF,
                                              yumi_pos, yumi_ori)

        self._build_jnt_id()

        self.setup_single_arms(right_arm=self.right_arm,
                               left_arm=self.left_arm)

        for arm in self.arms.values():
            if hasattr(arm, 'eetool'):
                arm.eetool.feed_robot_info(self.robot_body_id, self.jnt_to_id)
                arm.eetool.activate()
                if arm._self_collision:
                    arm.eetool.disable_gripper_self_collision()
