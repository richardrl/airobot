import importlib
import os
import time

from .utils.ai_logger import Logger
from .utils.common import load_class_from_path
from .version import __version__


class Robot:
    """
    Create a robot instance, which contains:
    arm, base, camera
    End effector tool is inside the arm class

    Args:
        robot_name (str): robot name
        pybullet (bool): if True, the pybullet simulation
            environment of the robot will be created.
            Otherwise, the ROS environment of the robot
            will be created.
        use_arm (bool): whether to create the robot arm instance
            if the robot has an arm class
        use_eetool (bool): whether to create the robot gripper instance
            if the robot has an arm class
        use_base (bool): whether to create the robot base instance
            if the robot has an base class
        use_cam (bool): whether to create the robot camera instance
            if the robot has an camera class
        pb_cfg (dict): arguments to pass int when creating
            the pybullet client
        arm_cfg (dict): arguments to pass in the constructor
            of the arm class
        base_cfg (dict): arguments to pass in the constructor
            of the base class
        cam_cfg (dict): arguments to pass in the constructor
            of the camera class
        eetool_cfg (dict): arguments to pass in the constructor
            of the end effector tool class

    Attributes:
        arm (ARM): robot arm
        base (BASE): robot base
        cam (CAMERA): camera
        pb_client (BulletClient): pybullet client if pb is True, None otherwise
    """

    def __init__(self,
                 robot_name,
                 pybullet=True,
                 use_arm=True,
                 use_eetool=True,
                 use_base=True,
                 use_cam=True,
                 pb_cfg=None,
                 arm_cfg=None,
                 base_cfg=None,
                 cam_cfg=None,
                 eetool_cfg=None
                 ):

        if pb_cfg is None:
            pb_cfg = {}
        if arm_cfg is None:
            arm_cfg = {}
        if base_cfg is None:
            base_cfg = {}
        if cam_cfg is None:
            cam_cfg = {}
        if eetool_cfg is None:
            eetool_cfg = {}

        root_path = os.path.dirname(os.path.realpath(__file__))
        configs_root_path = os.path.join(root_path, 'configs')
        robot_pool = []
        for f in os.listdir(configs_root_path):
            if f.endswith('_cfg.py'):
                robot_pool.append(f[:-len('_cfg.py')])

        root_module = 'airobot.'
        configs = None
        for robot_name_from_py in robot_pool:
            if robot_name_from_py == robot_name:
                mod = importlib.import_module(root_module + 'configs.' +
                                              '{:s}_cfg'.format(robot_name_from_py))
                config_func = getattr(mod, 'get_cfg')
                configs = config_func()
                break
        if configs is None:
            raise ValueError('Invalid robot name provided, only the following'
                             ' robots are available: {}'.format(robot_pool))

        self.pb_client = None
        if pybullet:
            urdfs_root_path = os.path.join(root_path, 'urdfs')
            urdf = os.path.join(urdfs_root_path,
                                configs.PYBULLET_URDF)
            configs.PYBULLET_URDF = urdf
            from .utils.pb_util import create_pybullet_client
            pb_client = create_pybullet_client(**pb_cfg)
            arm_cfg['pb_client'] = pb_client
            base_cfg['pb_client'] = pb_client
            eetool_cfg['pb_client'] = pb_client
            cam_cfg['pb_client'] = pb_client
            self.pb_client = pb_client
        else:
            import rospy
            try:
                rospy.init_node('airobot', anonymous=True)
            except rospy.exceptions.ROSException:
                log_info('ROS node [airobot] has already'
                         ' been initialized')

        class_suffix = 'Pybullet' if pybullet else 'Real'
        if configs.HAS_ARM and use_arm:
            if configs.ARM.CLASS == 'ARM':
                class_name = configs.ARM.CLASS
            else:
                class_name = configs.ARM.CLASS + class_suffix

            from .arm import class_names_to_paths as arm_class_names_to_paths
            arm_class = load_class_from_path(class_name,
                                             arm_class_names_to_paths[class_name])
            if not use_eetool:
                configs.HAS_EETOOL = False
            # else:
            #     configs.HAS_EETOOL = False
            if configs.HAS_EETOOL:
                configs.EETOOL.CLASS = configs.EETOOL.CLASS + class_suffix
            arm_cfg['eetool_cfg'] = eetool_cfg

            self.arm = arm_class(configs, **arm_cfg)
        if configs.HAS_BASE and use_base:
            class_name = configs.BASE.CLASS + class_suffix
            from .base import cls_name_to_path as base_cls_name_to_path
            base_class = load_class_from_path(class_name,
                                              base_cls_name_to_path[class_name])
            self.base = base_class(configs, **base_cfg)
        if configs.HAS_CAMERA and use_cam:
            class_name = configs.CAM.CLASS + class_suffix
            from .sensor.camera import cls_name_to_path \
                as cam_cls_name_to_path
            camera_class = load_class_from_path(class_name,
                                                cam_cls_name_to_path[class_name])
            self.cam = camera_class(configs, **cam_cfg)
        configs.freeze()
        time.sleep(1.0)  # sleep to give subscribers time to connect


logger = Logger('debug')


def set_log_level(log_level):
    """
    Set logging level

    Args:
        log_level (str): one of: 'debug', 'info',
            'warn', 'error', 'critical'
    """
    logger.set_level(log_level)


def log_warn(msg):
    """
    Logging warning information

    Args:
        msg (str): message to log
    """
    logger.warning(msg)


def log_info(msg):
    """
    Logging info information

    Args:
        msg (str): message to log
    """
    logger.info(msg)


def log_error(msg):
    """
    Logging error information

    Args:
        msg (str): message to log
    """
    logger.error(msg)


def log_debug(msg):
    """
    Logging debug information

    Args:
        msg (str): message to log
    """
    logger.debug(msg)


def log_critical(msg):
    """
    Logging critical information

    Args:
        msg (str): message to log
    """
    logger.critical(msg)
