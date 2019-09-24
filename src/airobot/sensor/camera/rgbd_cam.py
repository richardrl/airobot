import threading
import time
from copy import deepcopy

import message_filters
import numpy as np
import rospy
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import CameraInfo
from sensor_msgs.msg import Image
from tf import TransformListener

from airobot.sensor.camera.camera import Camera


class RGBDCamera(Camera):
    def __init__(self, cfgs, cam_name=None):
        """
        Initialize the rgbd camera

        Args:
            cfgs: configurations for the camera
            cam_name: camera name
        """
        super(RGBDCamera, self).__init__(cfgs=cfgs)
        self.depth_topic = self.cfgs.CAM_REALSENSE.ROSTOPIC_CAMERA_DEPTH
        self.rgb_topic = self.cfgs.CAM_REALSENSE.ROSTOPIC_CAMERA_RGB
        self.cam_info_topic = self.cfgs.CAM_REALSENSE.ROSTOPIC_CAMERA_INFO
        self.depth_scale = self.cfgs.CAM_REALSENSE.DEPTH_SCALE
        if cam_name is not None:
            self.depth_topic = self._rp_cam_name(self.depth_topic,
                                                 cam_name)
            self.rgb_topic = self._rp_cam_name(self.rgb_topic,
                                               cam_name)
            self.cam_info_topic = self._rp_cam_name(self.cam_info_topic,
                                                    cam_name)
        self.cv_bridge = CvBridge()
        self.cam_info_lock = threading.RLock()
        self.cam_img_lock = threading.RLock()
        self._tf_listener = TransformListener()
        self.rgb_img = None
        self.depth_img = None
        self.cam_info = None
        self.cam_P = None
        self.cam_K = None
        self.cam_height = None
        self.cam_width = None
        self.cam_ext_mat = None  # extrinsic matrix T
        rospy.Subscriber(self.cam_info_topic,
                         CameraInfo,
                         self._cam_info_callback)

        self.rgb_sub = message_filters.Subscriber(self.rgb_topic,
                                                  Image)
        self.depth_sub = message_filters.Subscriber(self.depth_topic,
                                                    Image)
        img_subs = [self.rgb_sub, self.depth_sub]
        self.sync = message_filters.ApproximateTimeSynchronizer(img_subs,
                                                                queue_size=10,
                                                                slop=0.2)
        self.sync.registerCallback(self._sync_callback)
        time.sleep(1)
        self.depth_min = self.cfgs.CAM_REALSENSE.DEPTH_MIN
        self.depth_max = self.cfgs.CAM_REALSENSE.DEPTH_MAX

        self.cam_K_inv = np.linalg.inv(self.cam_K)

        img_pixs = np.mgrid[0: self.cam_height,
                            0: self.cam_width].reshape(2, -1)
        img_pixs[[0, 1], :] = img_pixs[[1, 0], :]
        self.uv_one = np.concatenate((img_pixs,
                                      np.ones((1, img_pixs.shape[1]))))
        self.uv_one_in_cam = np.dot(self.cam_K_inv, self.uv_one)

    def _cam_info_callback(self, msg):
        self.cam_info_lock.acquire()
        if self.cam_info is None:
            self.cam_info = msg
        if self.cam_height is None:
            self.cam_height = int(msg.height)
        if self.cam_width is None:
            self.cam_width = int(msg.width)
        if self.cam_P is None:
            self.cam_P = np.array(msg.P).reshape((3, 4))
        if self.cam_K is None:
            self.cam_K = self.cam_P[:3, :3]
        self.cam_info_lock.release()

    def _sync_callback(self, color, depth):
        self.cam_img_lock.acquire()
        try:
            bgr_img = self.cv_bridge.imgmsg_to_cv2(color, "bgr8")
            self.rgb_img = bgr_img[:, :, ::-1]
            self.depth_img = self.cv_bridge.imgmsg_to_cv2(depth,
                                                          "passthrough")
        except CvBridgeError as e:
            rospy.logerr(e)
        self.cam_img_lock.release()

    def _rp_cam_name(self, topic, cam_name):
        """
        Replace the camera name in related ROS topics

        Args:
            topic (str): ros topic name
            cam_name (str): desired camera name

        Returns:
            new ros topic name after the replacement
            of the camera name
        """
        topic = topic.split('/')[1:]
        topic.insert(0, cam_name)
        return '/'.join(topic)

    def set_cam_ext(self, cam_ext):
        self.cam_ext_mat = cam_ext

    def get_images(self, get_rgb=True, get_depth=True, **kwargs):
        """
        Return rgb/depth images

        Args:
            get_rgb (bool): return rgb image if True, None otherwise
            get_depth (bool): return depth image if True, None otherwise

        Returns:
            rgb and depth images (np.ndarray)
        """
        rgb_img = None
        depth_img = None
        self.cam_img_lock.acquire()
        if get_rgb:
            rgb_img = deepcopy(self.rgb_img)
        if get_depth:
            depth_img = deepcopy(self.depth_img)
        self.cam_img_lock.release()
        return rgb_img, depth_img

    def get_pix_3dpt(self, depth_im, rs, cs, filter_depth=False):
        """

        Args:
            depth_im (np.ndarray): depth image (shape: [H, W])
            rs (int or list or np.ndarray): rows of interest.
                It can be a list or 1D numpy array
                which contains the row indices. The default value is None,
                which means all rows.
            cs (int or list or np.ndarray): columns of interest.
                It can be a list or 1D numpy array
                which contains the column indices. The default value is None,
                which means all columns.
            filter_depth (bool): if True, only pixels with depth values
                between [self.depth_min, self.depth_max]
                will remain

        Returns:
            3D point coordinates of the pixels in
                 camera frame (np.ndarray, shape: [4, N])
        """
        assert isinstance(rs,
                          int) or isinstance(rs,
                                             list) or isinstance(rs,
                                                                 np.ndarray)
        assert isinstance(cs,
                          int) or isinstance(cs,
                                             list) or isinstance(cs,
                                                                 np.ndarray)
        if isinstance(rs, int):
            rs = [rs]
        if isinstance(cs, int):
            cs = [cs]
        if isinstance(rs, np.ndarray):
            rs = rs.flatten()
        if isinstance(cs, np.ndarray):
            cs = cs.flatten()
        depth_im = depth_im[rs, cs]
        depth = depth_im.reshape(-1) * self.depth_scale
        img_pixs = np.stack((rs, cs)).reshape(2, -1)
        img_pixs[[0, 1], :] = img_pixs[[1, 0], :]
        if filter_depth:
            valid = depth > self.depth_min
            valid = np.logical_and(valid,
                                   depth < self.depth_max)
            depth = depth[:, valid]
            img_pixs = img_pixs[:, valid]
        uv_one = np.concatenate((img_pixs,
                                 np.ones((1, img_pixs.shape[1]))))
        uv_one_in_cam = np.dot(self.intrinsic_mat_inv, uv_one)
        pts_in_cam = np.multiply(uv_one_in_cam, depth)
        pts_in_cam = np.concatenate((pts_in_cam,
                                     np.ones((1, pts_in_cam.shape[1]))),
                                    axis=0)
        return pts_in_cam

    def get_pcd(self, depth_im, rgb_im=None, in_world=True, filter_depth=True):
        """
        Get the point cloud from the entire depth image
        +in the camera frame or in the world frame

        Args:
            depth_im (np.ndarray): depth image (shape: [H, W])
            rgb_im (np.ndarray): rgb image (shape: [H, W, 3]),
                if it's not None, both point cloud and corresponding
                color will be returned
            in_world (bool): return point cloud in the world frame, otherwise,
                return point cloud in the camera frame
            filter_depth (bool): only return the point cloud with depth values
                lying in [self.depth_min, self.depth_max]

        Returns:
            point coordinates (shape: [N, 3]) and rgb values (shape: [N, 3])
        """
        # pcd in camera from depth
        depth = depth_im.reshape(-1) * self.depth_scale
        rgb = None
        if rgb_im is not None:
            rgb = rgb_im.reshape(-1, 3)
        if filter_depth:
            valid = depth > self.depth_min
            valid = np.logical_and(valid,
                                   depth < self.depth_max)
            depth = depth[valid]
            rgb = rgb[valid]
            uv_one_in_cam = self.uv_one_in_cam[:, valid]
        else:
            uv_one_in_cam = self.uv_one_in_cam
        pts_in_cam = np.multiply(uv_one_in_cam, depth)
        if not in_world:
            pcd_pts = pts_in_cam.T
            pcd_rgb = rgb
            return pcd_pts, pcd_rgb
        else:
            if self.cam_ext_mat is None:
                raise ValueError('Please call set_cam_ext() first to set up'
                                 ' the camera extrinsic matrix')
            pts_in_cam = np.concatenate((pts_in_cam,
                                         np.ones((1, pts_in_cam.shape[1]))),
                                        axis=0)
            pts_in_world = np.dot(self.cam_ext_mat, pts_in_cam)
            pcd_pts = pts_in_world[:3, :].T
            pcd_rgb = rgb
            return pcd_pts, pcd_rgb
