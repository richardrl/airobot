import time

import numpy as np
from airobot import Robot
from airobot import log_warn
from airobot.utils.common import euler2quat
import open3d

def main():
    """
    This function shows an example of block stacking.
    """
    np.set_printoptions(precision=4, suppress=True)
    robot = Robot('ur5e_2f140')
    success = robot.arm.go_home()
    if not success:
        log_warn('Robot go_home failed!!!')
    ori = euler2quat([0, 0, np.pi / 2])

    robot.pb_client.removeBody(0)
    robot.pb_client.removeBody(1)


    robot.pb_client.load_urdf('table/table.urdf',
                              [.5, 0, 0.4],
                              ori,
                              scaling=0.9)
    box_size = 0.05
    box_id1 = robot.pb_client.load_geom('box', size=box_size,
                                        mass=1,
                                        base_pos=[.5, 0.12, 1.0],
                                        rgba=[1, 0, 0, 1])
    box_id2 = robot.pb_client.load_geom('box',
                                        size=box_size,
                                        mass=1,
                                        base_pos=[0.3, 0.12, 1.0],
                                        rgba=[0, 0, 1, 1])

    robot.cam.setup_camera(focus_pt=robot.arm.robot_base_pos,
                           dist=1.7,
                           yaw=55,
                           pitch=-100, #-30 original
                           roll=0)
    depth_max = 2.5
    vis = open3d.visualization.Visualizer()
    vis.create_window("Point Cloud")

    pcd = open3d.geometry.PointCloud()
    pts, colors = robot.cam.get_pcd(in_world=True,
                                    filter_depth=True,
                                    depth_max=depth_max)
    pcd.points = open3d.utility.Vector3dVector(pts)
    pcd.colors = open3d.utility.Vector3dVector(colors / 255.0)
    vis.add_geometry(pcd)
    while True:
        pts, colors = robot.cam.get_pcd(in_world=True,
                                        filter_depth=True,
                                        depth_max=depth_max)
        pcd.points = open3d.utility.Vector3dVector(pts)
        pcd.colors = open3d.utility.Vector3dVector(colors / 255.0)
        vis.update_geometry(pcd)
        vis.poll_events()
        vis.update_renderer()
        time.sleep(0.1)

    robot.arm.eetool.open()
    obj_pos = robot.pb_client.get_body_state(box_id1)[0]
    move_dir = obj_pos - robot.arm.get_ee_pose()[0]
    move_dir[2] = 0
    eef_step = 0.025
    robot.arm.move_ee_xyz(move_dir, eef_step=eef_step)
    move_dir = np.zeros(3)
    move_dir[2] = obj_pos[2] - robot.arm.get_ee_pose()[0][2]
    robot.arm.move_ee_xyz(move_dir, eef_step=eef_step)
    robot.arm.eetool.close(wait=False)
    robot.arm.move_ee_xyz([0, 0, 0.3], eef_step=eef_step)

    obj_pos = robot.pb_client.get_body_state(box_id2)[0]
    move_dir = obj_pos - robot.arm.get_ee_pose()[0]
    move_dir[2] = 0
    robot.arm.move_ee_xyz(move_dir, eef_step=eef_step)
    move_dir = obj_pos - robot.arm.get_ee_pose()[0]
    move_dir[2] += box_size * 2
    robot.arm.move_ee_xyz(move_dir, eef_step=eef_step)
    robot.arm.eetool.open()
    time.sleep(10)


if __name__ == '__main__':
    main()
