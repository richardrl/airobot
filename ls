[33mcommit d4b9499657121043908e31217052d739683667b9[m[33m ([m[1;36mHEAD -> [m[1;32mrtde[m[33m, [m[1;31morigin/rtde[m[33m)[m
Author: Richard Li <rli14@berkeley.edu>
Date:   Sat Mar 14 02:50:12 2020 -0400

    RTDE teleop working. Refactoring Robot class in __init__.py and verbosifying abbreviated variables like cfg

[33mcommit 2eb97fc8cbdd8bc1ab216adbff5f2d254fb6bd08[m[33m ([m[1;31morigin/richard_local[m[33m, [m[1;32mrichard_local[m[33m)[m
Author: temp_user <rli14@berkeley.edu>
Date:   Thu Feb 27 18:46:46 2020 -0500

    Backup

[33mcommit 48a4e830b5ee39b3efa65297df6eab9f00929a5e[m
Author: temp_user <rli14@berkeley.edu>
Date:   Wed Feb 26 22:50:53 2020 -0500

    Store previous n force readings in queue

[33mcommit d3aff0bce20a7e56a12c4bba1318819b796ffc08[m
Author: temp_user <rli14@berkeley.edu>
Date:   Wed Feb 26 01:50:18 2020 -0500

    Fixes to get Bandu working..

[33mcommit 6020ce03f37f96df8496705ead81cef97ba46f15[m
Author: temp_user <rli14@berkeley.edu>
Date:   Tue Feb 25 23:05:59 2020 -0500

    wrenchstamped and threading added to ur5e_real, fix error

[33mcommit 53f878c1ea37b204af9e4223b6101a47f2e8228b[m
Author: temp_user <rli14@berkeley.edu>
Date:   Tue Feb 25 22:17:50 2020 -0500

    Camera calib copy over in catkin ws

[33mcommit 2e29ba7d0a247b7a9290c6e474aeffc6c688364e[m
Merge: f350e33 117e73e
Author: temp_user <rli14@berkeley.edu>
Date:   Tue Feb 25 01:52:13 2020 -0500

    Merge branch 'docker_camera_calibration_changes' into richard_local

[33mcommit 117e73e7f887d6f2a485a0ee9eef2be7958c278e[m
Author: temp_user <rli14@berkeley.edu>
Date:   Tue Feb 25 01:48:46 2020 -0500

    Run docker using camera calibration directory on local disk.

[33mcommit f350e33d8ec957c4d84aaf3210e5218e2fd5949a[m
Author: temp_user <rli14@berkeley.edu>
Date:   Tue Feb 25 01:31:01 2020 -0500

    Force sensor readings added

[33mcommit e7838a6478ed85a56f3fb161364489fa5fd1a111[m[33m ([m[1;31morigin/qa[m[33m)[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Thu Feb 20 20:10:31 2020 -0500

    updated docker readme, removed catkin workspace sourcing and airobot setup as these are in entrypoint script

[33mcommit 2895c5a603ff13e933ad14db4e1f3dff875679ea[m
Author: taochenshh <taochen904@gmail.com>
Date:   Sun Feb 16 17:14:33 2020 -0500

    add an example of saving depth images properly

[33mcommit 3a8bbd517f8353c037716b0fe4449fc88812b477[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Feb 9 23:17:54 2020 -0500

    add acknowledgement

[33mcommit 418cb9f10564dc349c873eba78f6e0827f381beb[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Feb 9 06:23:25 2020 -0500

    add explicit requirements on python version

[33mcommit ebb570e64411dbaef167c25635f5d400ed6bf339[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Fri Feb 7 19:31:27 2020 -0500

    condensed torque ctrl enable/disable for dual arm, string formatting fix

[33mcommit 70191dc976f61b25128bb927571760139843738e[m
Merge: a032cf4 095bd90
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Fri Feb 7 18:50:25 2020 -0500

    Merge pull request #10 from Improbable-AI/issue_template
    
    add templates for posting issues

[33mcommit a032cf462f133e892bc8842ed75ecb5cb4039d31[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Feb 7 18:13:15 2020 -0500

    avoid statements: Module is imported twice with 'import' and 'import from'

[33mcommit 9e24d5234c51a031f0dc520006f44fcc4a9f14d1[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Feb 7 18:04:26 2020 -0500

    pass flake8

[33mcommit 58ef788c9684dee042b22cfe83ef96aca2cad15d[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Feb 7 17:46:01 2020 -0500

    handle variable number of args

[33mcommit e964c4833b2e078dd5bd9ee47da9839c505ce06c[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Feb 7 17:12:17 2020 -0500

    avoid module import itself in __init__

[33mcommit 6686c72413e900f29d3a05e2a4eeacb63de7264d[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Feb 7 17:10:54 2020 -0500

    avoid module import itself in __init__

[33mcommit 04d407eee0e3b195ddebb0f3dea310aa934d1a9f[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Feb 7 17:06:50 2020 -0500

    remove unnecessary pass

[33mcommit 74eef29060facece27490ca5a233f059dd61f668[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Fri Feb 7 12:38:45 2020 -0500

    add license badge to readme

[33mcommit 749d5325d2e82921e8fbb1a735a2ff7e63986641[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Feb 4 11:11:39 2020 -0500

    add missing comments in camera

[33mcommit 4dbbf25727fbabcca3f0301429a5a19bd8837f1c[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Tue Feb 4 00:21:45 2020 -0500

    add docs passing badge

[33mcommit 095bd90d8590ca96f262254469b02a655b0b99f8[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Feb 3 18:00:26 2020 -0500

    add templates for posting issues

[33mcommit 0d19f14ff062152eb74d045ac9c7f5d337d4aef2[m
Author: taochenshh <chentao904@163.com>
Date:   Mon Feb 3 17:57:22 2020 -0500

    add full stops in comments

[33mcommit ccd6a7d2fe533daf62df8329378a73798860277d[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Feb 3 16:43:12 2020 -0500

    Update camera_image.py

[33mcommit b600707fe6925d63373054fb9df7217cd7a2a775[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Feb 3 16:42:55 2020 -0500

    add full stops to the comments

[33mcommit cefee610d212e963bc8cbabfbbd4e11fef18b42e[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Feb 3 13:51:09 2020 -0500

    update example in readme

[33mcommit d5900519d4204db63fae58441385c2d0cf6dde0f[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Feb 2 19:33:31 2020 -0500

    update get_camera in pybullet

[33mcommit 19f1efcc18e31ee6bb6ca491044674b804274c1f[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Feb 2 19:05:30 2020 -0500

    add option not to use opengl render

[33mcommit 4752d9b51566aabe2497923ac5b084937169003d[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Fri Jan 31 00:16:44 2020 -0500

    Update README.md

[33mcommit a7b9eb4e97db8c0e1b1f1e47060100266e3688eb[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Fri Jan 31 00:16:25 2020 -0500

    Update README.md

[33mcommit f71a956ce6d0e1c7c24a5fffc184cc537cecc771[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Jan 29 19:58:56 2020 -0500

    only use egl render in linux

[33mcommit 4ec3c9bd9f108672e5ddca10e207daf765708c9a[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Sun Jan 26 06:38:09 2020 -0500

    Update README.md

[33mcommit 3d7df3d71027f45711ad50e324ddcaad2a998d05[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Jan 26 06:28:32 2020 -0500

    refactor pybullet code

[33mcommit 3c94e47f941b1f580791110850abd053ca6acfcc[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Sat Jan 25 17:50:54 2020 -0500

    replaced max_torques in ur5e_real with values from cfg file

[33mcommit 1927263192f74c7a06d6e165c10bb40b9b2b8114[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Jan 20 19:01:26 2020 -0500

    Update ur5e_stick_cfg.py

[33mcommit 65c77386accfb920e1343355ca32a28081132172[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Jan 20 18:34:37 2020 -0500

    Update ur5e_arm.py

[33mcommit 6379d384ea7ff585ea05bcea317c255e0834b855[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Jan 20 18:34:05 2020 -0500

    Update ur5e_stick_cfg.py

[33mcommit 9897630f93c56cd9c10e9a88cbb0c9e4e5fd2a32[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Jan 20 18:33:23 2020 -0500

    Update ur5e_2f140_pybullet.urdf

[33mcommit 7d74abcb5e457e34bbdbcf48f8a99f34941365fe[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Jan 20 18:33:00 2020 -0500

    Delete ur5e_2f140.pdf

[33mcommit cb01cb0c2f809fa8cb6912986ed1be223e759301[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Jan 20 18:32:20 2020 -0500

    Update ur5e_pybullet.urdf

[33mcommit aad701db050a164e5fa6e08c1667da7cc3db1079[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Jan 20 18:31:26 2020 -0500

    Update ur5e_stick_pybullet.urdf

[33mcommit 10fa60d398a4beeeba338a9799bcd307faa68042[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Mon Jan 20 16:38:04 2020 -0500

    updated ur5e_stick with offset end effector and ee_link_name in cfg file

[33mcommit 9d66027f1af123648efed3e1a9786ec61de9bb3a[m
Merge: a8d1df7 d4fb828
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Mon Jan 20 10:47:04 2020 -0500

    Merge branch 'qa' of github.com:Improbable-AI/airobot into qa

[33mcommit a8d1df7d1ce2a6c3a489c8d435ee97efe2c10ac0[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Mon Jan 20 10:46:51 2020 -0500

    added ur5e with stick ee to cfgs and urdfs, and updated yumi palm urdf with smaller link masses and new joint torques

[33mcommit d4fb828dd5e85a0c2eaf8435662e7df08c385213[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Fri Jan 17 17:00:10 2020 -0500

    Update pb_util.py

[33mcommit c00dd8bd7c8e3227e178b7eeca1d6291325c2e12[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Fri Jan 17 15:40:11 2020 -0500

    attribute descriptions

[33mcommit 56a16ffa8b585aea212a5c9cb0d4e89a5043b1bb[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Fri Jan 17 11:53:04 2020 -0500

    update docker readme

[33mcommit 8c5dd937e9cea9e8d648cd95d9141701dc292450[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Fri Jan 17 11:48:41 2020 -0500

    update readme for release

[33mcommit 6b3be1562eb648b99bb80c39693722af44f82ba4[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Fri Jan 17 11:02:23 2020 -0500

    modified yumi cfg max torques and updated cfgs docs

[33mcommit e32cf42e3ef0e6e2675df898f6bb805d142715ff[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Fri Jan 17 09:42:49 2020 -0500

    added pybullet get_segmentation_mask and modified ur5e sim camera example

[33mcommit d9c2428a0743a0cf908ad2ed7d01d451aa771bce[m
Author: taochenshh <taochen904@gmail.com>
Date:   Fri Jan 17 00:08:35 2020 -0500

    remove shadow option

[33mcommit 7e387daeeefa746866b26c3b58abe2b7024bbc19[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Thu Jan 16 23:01:13 2020 -0500

    Update rgbdcam.py

[33mcommit 5a4bfcd1aa63d26fda2477a52d6e9e3cd0bd5dbf[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Thu Jan 16 21:24:43 2020 -0500

    Update custom_ee_tool.py

[33mcommit 3941b197e7290739e6d2b34cd758dfa47acb1078[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Thu Jan 16 20:16:11 2020 -0500

    Update camera.py

[33mcommit e1b3234bcc922b3efc677d5e4dd969069066221e[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Thu Jan 16 20:03:24 2020 -0500

    reorganized cfg files

[33mcommit d59f61442f6726d374670cfa977f46426ba59005[m
Author: taochenshh <taochen904@gmail.com>
Date:   Thu Jan 16 19:04:20 2020 -0500

    add sleep after create publisher

[33mcommit 163a0ba42fc9770d8bdfbe8c45dabd3191035690[m
Author: taochenshh <taochen904@gmail.com>
Date:   Thu Jan 16 18:16:21 2020 -0500

    add attributes to docstring; clean up class variables

[33mcommit 2f8e59923de2e9fd629d95c8a8d7d61eee929420[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Jan 15 19:09:49 2020 -0500

    install scripts in non-cuda dockerfile

[33mcommit ac8797d42168fcba31220bf34d2a8ac30e7403e0[m
Author: taochenshh <taochen904@gmail.com>
Date:   Wed Jan 15 18:35:14 2020 -0500

    move docstrings for init to class

[33mcommit d2ebc7ce045e09edff111e2648cf3299beea18c0[m
Merge: 2c1b4b5 1edd086
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Wed Jan 15 16:13:52 2020 -0500

    Merge pull request #7 from Improbable-AI/yumi-merge
    
    Yumi merge into QA before master release

[33mcommit 1edd0864e823e9e639416235bfad8b47ec2000da[m
Author: taochenshh <taochen904@gmail.com>
Date:   Wed Jan 15 16:12:58 2020 -0500

    replace print with logger info

[33mcommit a0c781046ec103365648fcdf18fa56ea69828142[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Jan 15 15:54:10 2020 -0500

    yumi compute_ik returning only arm joints, extra example info, comments removed. prep for qa merge

[33mcommit 98dab4541ddc41ac90b7dd8bc5c6ce0b05a7571b[m
Author: taochenshh <taochen904@gmail.com>
Date:   Wed Jan 15 12:58:11 2020 -0500

    clean up some comments

[33mcommit 47ce8f5aba3d8d5ab47281ee8c62b25e33cc581d[m
Merge: 20fa526 2c1b4b5
Author: anthonysimeonov <35552658+anthonysimeonov@users.noreply.github.com>
Date:   Wed Jan 15 12:43:42 2020 -0500

    Merge branch 'qa' into yumi-merge

[33mcommit 20fa526a8b31f4da4e81191d78ff87b62a1fa668[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Jan 15 11:57:29 2020 -0500

    updated docs with yumi arm, end effector, and cfgs

[33mcommit 2c1b4b5e56a18f3562b219d3bc6a40298828592f[m
Author: taochenshh <taochen904@gmail.com>
Date:   Wed Jan 15 11:33:25 2020 -0500

    make editable pip install in doc

[33mcommit d50735df9b831f76e1f6fc26442faf394b895d67[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Jan 15 11:32:40 2020 -0500

    docstrings, adding yumi to docs

[33mcommit 8766149c6a76309c495c19f5e91907048accc2a1[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Wed Jan 15 11:19:29 2020 -0500

    add yumi to readme

[33mcommit 846d68b3560bb6c9c6045b70ee2d22d1199b206b[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Jan 15 10:42:31 2020 -0500

    yumi palm and gripper classes working with some examples, palm urdf updated with prismatic joints at palm wrists

[33mcommit f28419f978cf390d1a8e2344d554faaf6d1040e0[m
Author: taochenshh <taochen904@gmail.com>
Date:   Tue Jan 14 22:15:44 2020 -0500

    add options in pybullet get image

[33mcommit 5bb1d515943a58d37d4add7ed2cb464dadfc54fd[m
Author: taochenshh <taochen904@gmail.com>
Date:   Tue Jan 14 22:13:30 2020 -0500

    add options in pybullet get image

[33mcommit 457f96467197e48fc6b8a631d1cdd40e34bb6ea5[m
Author: taochenshh <taochen904@gmail.com>
Date:   Tue Jan 14 21:29:28 2020 -0500

    update api webpage

[33mcommit f0bb0027cc50daa2b8fb0c1118da430b8833d064[m
Author: taochenshh <taochen904@gmail.com>
Date:   Tue Jan 14 20:20:20 2020 -0500

    better modular configs on ur5e

[33mcommit 907240793d4d068cc8f4e01dbc8087d64da76780[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Jan 14 20:14:58 2020 -0500

    urdf for gripper, palm, and no EE, and fixed IK bug

[33mcommit 34aa04e4766dd99f0700ac02319b32fea3e49829[m
Merge: 42e1621 a63374f
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Jan 14 18:09:14 2020 -0500

    testing yumi gripper urdf

[33mcommit a63374fa757c3276e6c8e0f4d17ee473ee6e6f6d[m
Merge: fd235c2 fece12d
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Jan 14 18:07:23 2020 -0500

    testing cfg with multiple urdf

[33mcommit fd235c21de463c306961349b01d08a3f2eef4e9a[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Jan 14 18:06:41 2020 -0500

    yumi urdfs for palms and grippers and examples dir

[33mcommit 42e1621e99d7aa4651fd75f52f822d0f8513f56a[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Sun Jan 12 15:19:16 2020 -0500

    joint names property and remove rt_sim thread from arm class

[33mcommit 523bed7c6683dfb5edec87f187ca0cef572775d4[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Jan 8 10:21:30 2020 -0500

    added rt_simulation flag and segmentation mask option for pybullet camera

[33mcommit 8f3119b6502d08d07f7e5bf4128421ffe3409d13[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Dec 17 23:44:12 2019 -0500

    rgbd cam with get_pcd and updated reqs from qa branch

[33mcommit a43a69b81d2c698f86c026c2f8cd1578c79a743c[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Dec 17 18:22:12 2019 -0500

    updated friction and force values for compliant joints

[33mcommit f773eb3d1a6088b69d8962b38d261526e74b785e[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Fri Dec 6 22:57:13 2019 -0500

    friction value update

[33mcommit 2eba08e597b6e9329715714b978a65ba0ec1046f[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Sat Nov 16 17:31:04 2019 -0500

    modified compliant joint params

[33mcommit fa5bf9f5802d0ae171d3ee52fa1b72aaa39aaf13[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Thu Nov 14 17:27:48 2019 -0500

    added force value for compliant joint actuation to stop flailing

[33mcommit e696a3224ad74b8211f524103c2f3073bde76874[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Nov 12 19:01:27 2019 -0500

    added import copy and removed embed from get joint ranges

[33mcommit 91f1a6c8964d2669c8db25801f6694581c7745bf[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Nov 12 11:45:56 2019 -0500

    removed separate file for compliant arm, leaving in yumi_pb file

[33mcommit 34cbaf5a558c47e4b83446c12564303211a862a2[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Nov 12 11:43:43 2019 -0500

    refactored for single arm and double arm base classes, and added nullspace option to single arm compute_ik. needs debugging

[33mcommit 9613dc2327c1b77bbdde3973d8b5d4405070b42b[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Nov 6 21:26:06 2019 -0500

    fixed yumi joint 6, added urdf/meshes for yumi, restructured yumi cfg file

[33mcommit 289cc73375049ac303e7c87a97e2c4ef3a39b831[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Nov 6 16:42:20 2019 -0500

    updated to reflect global pybullet client

[33mcommit 064cb4f4a76d2f46b3da833eb6d85a26972def37[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Nov 6 16:36:40 2019 -0500

    added dual arm funcitonality and yumi

[33mcommit 08542fea0da75032cc9b781c92bf2870479a9232[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Tue Jan 14 17:32:45 2020 -0500

    Update README.md

[33mcommit 34ff346057aa43bcb67249cb28502d6aa31ef3ca[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Sun Jan 12 15:19:16 2020 -0500

    joint names property and remove rt_sim thread from arm class

[33mcommit d4b3bca21f8c468be8d8b3c45ec239c5e6415121[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Jan 8 10:21:30 2020 -0500

    added rt_simulation flag and segmentation mask option for pybullet camera

[33mcommit 59027f56ac2937d79dbe009816991a578e84ab23[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Dec 17 23:44:12 2019 -0500

    rgbd cam with get_pcd and updated reqs from qa branch

[33mcommit 35207c680930d2b8c78b32364ebe307e55418e15[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Dec 17 18:22:12 2019 -0500

    updated friction and force values for compliant joints

[33mcommit cea24e2c9c82f91cdd74354fcc5be50865cc4749[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Fri Dec 6 22:57:13 2019 -0500

    friction value update

[33mcommit 43ea469859ffda432795dec678f155133993cbde[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Sat Nov 16 17:31:04 2019 -0500

    modified compliant joint params

[33mcommit b96445bc649866ddb945bf47be15f0bd1aa468c2[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Thu Nov 14 17:27:48 2019 -0500

    added force value for compliant joint actuation to stop flailing

[33mcommit 6d372b24b4fb0a94be0fc398aee4fe738b77f007[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Nov 12 19:01:27 2019 -0500

    added import copy and removed embed from get joint ranges

[33mcommit 63bdb8af8b387d7f71942d27bbd2a9da7524ff6b[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Nov 12 11:45:56 2019 -0500

    removed separate file for compliant arm, leaving in yumi_pb file

[33mcommit 015d611e088b33faecfacbed4252858b53310c7b[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Nov 12 11:43:43 2019 -0500

    refactored for single arm and double arm base classes, and added nullspace option to single arm compute_ik. needs debugging

[33mcommit a3fa02f6961939c444aefc456fa87ef27a24fbdd[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Nov 6 21:26:06 2019 -0500

    fixed yumi joint 6, added urdf/meshes for yumi, restructured yumi cfg file

[33mcommit eae8d78f2ce53ef7bda1c7b8038868dabd21cd8b[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Nov 6 16:42:20 2019 -0500

    updated to reflect global pybullet client

[33mcommit 765ea60df35fb9b531188aea904a5c8bec4095d1[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Nov 6 16:36:40 2019 -0500

    added dual arm funcitonality and yumi

[33mcommit 74f6b883c56d8d5c5ad8aaad1b5c1d29a79dd1ec[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Jan 14 14:10:02 2020 -0500

    custom_ee_tool example flake8 pass and using pb_client

[33mcommit 7ae39ba23b24af965d30cbefab3d3fe0bd9990bc[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Jan 14 13:53:32 2020 -0500

    directory for docker installation scripts

[33mcommit 8b5d950f3fec1b3854e6fa0f2b1bb2320e28cfd6[m
Author: taochenshh <taochen904@gmail.com>
Date:   Tue Jan 14 13:43:43 2020 -0500

    minor change on formats

[33mcommit fece12daf3e2c71152ee455172b312ec69c73066[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Sun Jan 12 15:19:16 2020 -0500

    joint names property and remove rt_sim thread from arm class

[33mcommit dce3315344bbeb5805d576732aa25280074c9593[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Jan 8 10:21:30 2020 -0500

    added rt_simulation flag and segmentation mask option for pybullet camera

[33mcommit 9f036be46e3a8a761317fb3258fdcd4b2edc04c7[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Dec 17 23:44:12 2019 -0500

    rgbd cam with get_pcd and updated reqs from qa branch

[33mcommit a475c0d7c1736afb024ce6d36277cd091f9ffbeb[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Dec 17 18:22:12 2019 -0500

    updated friction and force values for compliant joints

[33mcommit 5eb1f52a4f8d07fea36fa670c7ad61126275130d[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Fri Dec 6 22:57:13 2019 -0500

    friction value update

[33mcommit 3da9cddfe60d8ab5c548fd1ffe3c7bc44d61523a[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Sat Nov 16 17:31:04 2019 -0500

    modified compliant joint params

[33mcommit 2cc3b1ee1cc0d2f8319933368a253238adf9e01a[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Thu Nov 14 17:27:48 2019 -0500

    added force value for compliant joint actuation to stop flailing

[33mcommit 185db16398a1f82745795f8b59e0defb936907da[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Nov 12 19:01:27 2019 -0500

    added import copy and removed embed from get joint ranges

[33mcommit 7417533d91719ac7833c0ed2d0e9368d205c2a77[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Nov 12 11:45:56 2019 -0500

    removed separate file for compliant arm, leaving in yumi_pb file

[33mcommit f02274d8b08cae10db7283be85209685867fa2ae[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Nov 12 11:43:43 2019 -0500

    refactored for single arm and double arm base classes, and added nullspace option to single arm compute_ik. needs debugging

[33mcommit 25556c7a62e9f2addffec9fc53ad34d64fae6652[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Nov 6 21:26:06 2019 -0500

    fixed yumi joint 6, added urdf/meshes for yumi, restructured yumi cfg file

[33mcommit 5d08ffc1355e476383850b18a93ebceed49c3544[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Nov 6 16:42:20 2019 -0500

    updated to reflect global pybullet client

[33mcommit b86400ad095cb945eb02690376c13bdaf375e376[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Nov 6 16:36:40 2019 -0500

    added dual arm funcitonality and yumi

[33mcommit 3bfe01a640de0ea149cc224983c37fdd8a304142[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Jan 8 18:27:18 2020 -0500

    updated robot name in examples to reflect ur5e with robotiq gripper

[33mcommit ee85b8e0f9a7d95a1aa4bb57013b4c6be64e18a8[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Jan 8 18:21:44 2020 -0500

    added example for custom ee tool with pb constraint, and separate class for ur5e without robotiq gripper

[33mcommit 46db1e6a0ad025f40f8b0cf80bc3bec0db768f35[m
Author: taochenshh <taochen904@gmail.com>
Date:   Tue Jan 7 12:54:18 2020 -0500

    allow use_eetool to be false in pybullet

[33mcommit a154c2a96d626a8e08d097ebd84ccd2eaaccf40f[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Fri Jan 3 17:50:31 2020 -0500

    removed comments and clean up pytorch docker install script

[33mcommit 137c3cf0b156dec58eeb02e131bbb688590ac4e7[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Fri Jan 3 17:49:31 2020 -0500

    install scripts for docker build

[33mcommit 1f0c846d8efea2b50d416cba2c4a866b9700e5cd[m
Author: taochenshh <taochen904@gmail.com>
Date:   Thu Jan 2 15:32:25 2020 -0500

    minor change to the robot constructor

[33mcommit 9bf0fc809088fee64ba3e08a0832495d57e1f222[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Dec 30 17:16:44 2019 -0500

    fix minor typo

[33mcommit a71aaa6e1e430bd3df49c25a0007fd3c8e9ab07c[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Dec 30 15:23:56 2019 -0500

    fix open3d version

[33mcommit ab13bcebeef864f9732d7be29e0b0b45e78fcb5d[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Sun Dec 29 15:47:15 2019 -0500

    update docker instruction

[33mcommit a0067d6584bb0595e92224559897ec6324ab9b74[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Wed Dec 18 16:56:46 2019 -0500

    delete duplicate run lines

[33mcommit 46d5c3dc0cfe454cf8b8af84167c51131d482c5c[m
Author: taochenshh <taochen904@gmail.com>
Date:   Tue Dec 17 23:18:12 2019 -0500

    change ur background

[33mcommit ecfd60b4efed909c9768ffddf663105b3bbf3541[m
Author: taochenshh <taochen904@gmail.com>
Date:   Tue Dec 17 23:05:31 2019 -0500

    add utilities to get point cloud in pybullet

[33mcommit 1668500bca731350dcd917e1e02632a597b91b4c[m
Author: taochenshh <taochen904@gmail.com>
Date:   Tue Dec 17 10:52:00 2019 -0500

    fix library versinos for python2

[33mcommit 30d4c8130377949f72c36fa2b11005e103f43ee2[m
Author: taochenshh <taochen904@gmail.com>
Date:   Tue Dec 17 11:29:51 2019 -0500

    upgrade pip to 9.0.3 for python2

[33mcommit 734a5354f6a0da8a51f2c8710057a95d1c6132e1[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Dec 17 10:03:17 2019 -0500

    use apt-get to install cudnn in docker instead of deb file

[33mcommit 04d37100cc1a9bb04c926b61788bd722bfabb824[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Dec 16 20:57:22 2019 -0500

    Update requirements.txt

[33mcommit 6681a7b6610d173d01058450efe095c5e08d785d[m
Author: taochenshh <taochen904@gmail.com>
Date:   Mon Dec 16 17:33:07 2019 -0500

    add more sleep time in gripper activate; pass flake8

[33mcommit 98c2bdb7635545499ea6e8293797aa4b304fca94[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Mon Dec 16 16:47:00 2019 -0500

    added interal camera calibration ROS package to docker build

[33mcommit 0a280bbec29137e3a44aac0b51788a268dffa3bc[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Wed Dec 11 14:01:18 2019 -0500

    delete joint velocity control example until the new driver is tested

[33mcommit 275917fa8928d58e42e9dd41422932d4a2233aed[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Tue Dec 10 21:16:32 2019 -0500

    bump pybullet version

[33mcommit 78f144759df206cd4415579b43fb841280125e47[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Sat Dec 7 15:29:27 2019 -0500

    update docker readme

[33mcommit 703525e3c4ff70f24a6462317b207b7a9194a612[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Sat Dec 7 13:43:32 2019 -0500

    added instructions for downloading cudnn resources for local docker build

[33mcommit 9144e7dbb16a976c727157fb5a51b16d4738213e[m
Author: taochenshh <taochen904@gmail.com>
Date:   Fri Dec 6 23:05:56 2019 -0500

    update ur_dual_cam gym env

[33mcommit 6338d2d5b81d8b876d778ddcbe0c77908ebf502d[m
Author: taochenshh <taochen904@gmail.com>
Date:   Fri Dec 6 17:40:19 2019 -0500

    change default color

[33mcommit bfdc198860284e601a58e93213fbaa8951b75761[m
Author: taochenshh <taochen904@gmail.com>
Date:   Fri Dec 6 17:27:21 2019 -0500

    add more gym environments

[33mcommit 7dab50b62cff5195aa112caaa24e67679a1cda9b[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Dec 6 01:15:10 2019 -0500

    add ur gym example

[33mcommit 9ac5bf2910e15242ddb7a5693b2fc8cc422b59d7[m
Author: taochenshh <taochen904@gmail.com>
Date:   Wed Dec 4 17:36:58 2019 -0500

    delete extra logs

[33mcommit 1e5bef738046ffdb74b7b38279302f68ec1af999[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Mon Dec 2 18:29:46 2019 -0500

    updated docker with cuda, pytorch, and root user + bashrc for automatic catkin_ws sourcing

[33mcommit adf3b78e760053857e8c0c62d341af87627518c9[m
Author: taochenshh <taochen904@gmail.com>
Date:   Mon Dec 2 11:06:30 2019 -0500

    modify vel threshold

[33mcommit 401a3c782c360cb09d8ade941febf040c1a468eb[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Dec 1 19:56:01 2019 -0500

    move step simulation to pb_util

[33mcommit a84f6e92b87b4235f0864187b4173abfbca9132b[m
Merge: f330c2c 8a08a68
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Wed Nov 27 17:33:01 2019 -0500

    Merge pull request #6 from Improbable-AI/gripper_constraint
    
    Make gripper more stable

[33mcommit 8a08a68f30d0cadd87e8573747be49006866b0d9[m
Author: taochenshh <taochen904@gmail.com>
Date:   Wed Nov 27 17:32:02 2019 -0500

    restore to original color

[33mcommit 40cdd7670b2a6ee2d1a9b01456538a35ce17e6ce[m
Author: taochenshh <taochen904@gmail.com>
Date:   Wed Nov 27 17:25:28 2019 -0500

    add more friction on gripper; add block stacking example

[33mcommit 9ff57da0aed6dda85bf6e3c3981d74f9747368df[m
Author: taochenshh <taochen904@gmail.com>
Date:   Tue Nov 26 18:42:02 2019 -0500

    update installation instruction

[33mcommit f330c2cffbf4a1f4a4e518e8668a2ac042a92cfe[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Wed Nov 27 10:58:58 2019 -0500

    Update README.md

[33mcommit f8aac3fe0e4abcdf7a4dab018eb11e21a9002b09[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Nov 26 19:25:51 2019 -0500

    new docker with cuda in dev

[33mcommit 8c01d7daf49259d232178a838d9c87c84a40cb6a[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Tue Nov 26 10:37:13 2019 -0500

    Update README.md

[33mcommit 9d2d05cea9a5fbba46c9600acd82386c5d689af3[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Sat Nov 23 10:35:49 2019 -0500

    deleted TCP/IP util until realtime montior gets fixed

[33mcommit 443b402f420e3d70f40301e443061ba9ef56dff7[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Nov 22 22:15:38 2019 -0500

    bumper pybullet version; fix texture rendering memory issue

[33mcommit b7ec2ce6289f6494a9a7b644ecaa82a206832a52[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Nov 22 20:43:05 2019 -0500

    add util to reset object;pass flake8

[33mcommit 6a6c1c45081b29fb3bcd16e54191051af5add6d1[m
Author: taochenshh <taochen904@gmail.com>
Date:   Fri Nov 22 19:26:13 2019 -0500

    add utils to get object state and remove object

[33mcommit 0cf1d3715411803521d57d6ef4672ffda6acb3f1[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Nov 19 11:51:20 2019 -0500

    removed bashrc

[33mcommit efe1edbae288bb3619acd4591cdb08f26d88ed23[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Nov 19 11:49:12 2019 -0500

    renamed dockerfile for robot specific, new args and docstrings for docker build, docstrings and cleaned urscript util

[33mcommit 7c2730aa694e4f6e467cba7228b0b9aead59ef6c[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Tue Nov 19 10:02:54 2019 -0500

    Update README.md

[33mcommit 21fbd4f69fb1560499ceb159d03ead7dccc79d22[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Nov 19 09:30:50 2019 -0500

    added dockerfile line to properly retrieve keys for realsense sdk

[33mcommit 4293262eb0ef53b6577ef3f5577d4cb211028c95[m
Author: taochenshh <taochen904@gmail.com>
Date:   Mon Nov 18 18:02:19 2019 -0500

    more docstrings on test files

[33mcommit 19c66cf87c5b9f3bc1c59624f1b0eacfce0488d1[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Mon Nov 18 13:19:50 2019 -0500

    Update README.md

[33mcommit 9ceb243e4360452f9496578175a35a1083e38e22[m
Author: taochenshh <taochen904@gmail.com>
Date:   Sun Nov 17 16:05:28 2019 -0500

    add option to create static objects in pybullet

[33mcommit a075432c8a2becd41a7dc8cc705530d221921bef[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Nov 16 18:28:29 2019 -0500

    add warning on velocity control

[33mcommit 4142dda7776b3accb99d7dac42e9d0d4976c8f73[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Nov 16 18:26:27 2019 -0500

    pass flake8

[33mcommit 22c8fdbf0363fffff60ec756671328b05f12d890[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Nov 16 18:24:01 2019 -0500

    add docstring

[33mcommit 332723b15e0ab9ed56e78f601fb5acf00576dac0[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Sat Nov 16 18:20:50 2019 -0500

    build script with extra cache arg

[33mcommit 935344b72547ad6c88dae32003f7e412eac83a9c[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Nov 16 09:08:40 2019 -0500

    modify param name

[33mcommit ffda778a2913a2249c5206e2e554efca8b374eaa[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Nov 16 08:23:26 2019 -0500

    add option not to use eetool

[33mcommit c7e5d05322cb4a5ad84dc2f2070ffc432b1d2cc8[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Sat Nov 16 00:54:00 2019 -0500

    Update Dockerfile

[33mcommit e8401cc880cf66ac1bbcaa734bf4d2524a0421ac[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Nov 16 00:50:47 2019 -0500

    update gripper;check arm joint angles

[33mcommit bff3679abee94f2472f3cd383a0e75820a0ed65e[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Fri Nov 15 19:47:11 2019 -0500

    updated get gripper position and examples

[33mcommit d8866784d14146b3b02a738ac32a4c6f5cfd73a2[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Thu Nov 14 17:28:51 2019 -0500

    removed while loop thread for getting gripper state

[33mcommit 9d08c4cbffedde6da8792e39f31d49369a09e507[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Wed Nov 13 22:18:19 2019 -0500

    Update robotiq2f140_real.py

[33mcommit 8e75944b3e58117616788ca35bd033eb6e03588e[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Nov 13 14:23:45 2019 -0500

    updated docker readme with correct launch file commands for ROS

[33mcommit 00c8dee78e6707b91e6736edf243faa4bf0f5408[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Tue Nov 12 21:21:32 2019 -0500

    Update README.md

[33mcommit 22916e2c587b5dc7ae1c24e4d2303d59780e343b[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Nov 9 14:48:13 2019 -0500

    minor change

[33mcommit 11087b72dd715b672c76e59740e39e3e39e8432c[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Nov 9 14:45:55 2019 -0500

    changeTexture has memeory issue

[33mcommit d54a52f6023a0e2c26d169793a0d6bb75032d68f[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Nov 9 14:29:32 2019 -0500

    minor update

[33mcommit a99d76b0c41a18cc540f2e57392fe71bf5f2ef3b[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Nov 9 01:07:20 2019 -0500

    add texture randomization to pybullet

[33mcommit ab02d287a8427b078000e5eee9b21b9a2be84849[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Fri Nov 8 18:47:51 2019 -0500

    gripper config file with joint state topic

[33mcommit a07db1d2b5c19acd50a89b4f664bbbe9a2b475ef[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Fri Nov 8 18:47:24 2019 -0500

    updated gripper class with get_pos for real and gazebo

[33mcommit 6d6b78b69a45a58ef8e097d92031e9daf29f8c2a[m
Author: taochenshh <taochen904@gmail.com>
Date:   Fri Nov 8 17:57:55 2019 -0500

    pass flake8, add color to ur arm

[33mcommit ce36203876ab6effbb626827566f020b1b88328e[m
Author: taochenshh <taochen904@gmail.com>
Date:   Fri Nov 8 15:32:52 2019 -0500

    change the way to use global pybullet client

[33mcommit d3e811d82e0c77654eedeb6e762a8c443d1b324d[m
Author: taochenshh <taochen904@gmail.com>
Date:   Thu Nov 7 14:08:40 2019 -0500

    separate visual file and collision file in loading geom

[33mcommit 55f573ae5f21002334cdd87640f32a81e3d4a890[m
Author: taochenshh <taochen904@gmail.com>
Date:   Thu Nov 7 13:54:20 2019 -0500

    update pb_util doc

[33mcommit 67b88b477274649fa7f8bd88dc9116e2cee6f7a6[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Nov 7 00:51:49 2019 -0500

    add more utils to load mesh, geom in pybullet

[33mcommit 8d8eb506b3263e941df8d7600ab81ed40a5a32c6[m
Author: taochenshh <taochen904@gmail.com>
Date:   Wed Nov 6 19:24:19 2019 -0500

    add loading urdf util function for pybullet

[33mcommit b5bcbcc678963e71042e8bb2b350ce40f642f200[m
Author: taochenshh <taochen904@gmail.com>
Date:   Wed Nov 6 18:47:52 2019 -0500

    separate the realtime simulation from arm

[33mcommit 1e685ba3d50958b27105b0a814290841ea9258f2[m
Author: taochenshh <taochen904@gmail.com>
Date:   Wed Nov 6 17:09:19 2019 -0500

    minor change to pybullet

[33mcommit 52e39f7e5e346ace31a47338dd71a8c136d3e306[m
Author: taochenshh <taochen904@gmail.com>
Date:   Wed Nov 6 16:24:47 2019 -0500

    make pybullet client global

[33mcommit 6732c811b042d3d9d725b96eca61907028376118[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Nov 6 10:17:24 2019 -0500

    update readme

[33mcommit 4371e9d08a3610fd6e5e96ddf54b062f61ae8de4[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Nov 6 10:09:37 2019 -0500

    add robust kernel on pix to 3d point; extract higher-level arm class

[33mcommit f3f439255411ba1993dcecd68e3a5998b567330c[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Oct 25 17:56:38 2019 -0400

    minor bug fix in scale motion

[33mcommit a438efd1f7e5c5e2b32bdfec71f4713255b464f4[m
Author: taochenshh <taochen904@gmail.com>
Date:   Fri Oct 25 17:50:42 2019 -0400

    scale motion for ur_script

[33mcommit 2198694aaa24ea2cc46b8655b5f052ee1113610d[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Wed Oct 23 23:13:51 2019 -0400

    Update test_ur5e.py

[33mcommit 4c2f9fbb41d60b30a53690018c70ec04531362fb[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Oct 23 22:02:15 2019 -0400

    updated docker and requirements file

[33mcommit c7cefe32ba190a4ad222bbc36f6624acac2198f3[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Oct 23 14:41:19 2019 -0400

    added set speed function to 2f140 real gripper

[33mcommit 429cbf9736cc8ed5b9ba88a2b560256d9d24460b[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 23 14:29:28 2019 -0400

    minor update on docs

[33mcommit 30107d3b4e4e2e634bd607f95fc58a007cfa9e10[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 23 14:27:35 2019 -0400

    update docs

[33mcommit 3ab72093b537e1f3551ce0f3fff13438eef4798f[m
Author: taochenshh <taochen904@gmail.com>
Date:   Wed Oct 23 13:28:17 2019 -0400

    update docs

[33mcommit 9ec2e2cdd8cdd5e2fffa4ea65bf75bc602460d7d[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Oct 23 11:49:18 2019 -0400

    updated docstring formats

[33mcommit 855199a5a663d39a76f9e82d0736253c30fc3a8a[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 23 09:52:38 2019 -0400

    add missing docstring for load_class_from_path

[33mcommit d300c90270ca05b8791bb3b5c957bf670e21be3c[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 23 09:48:51 2019 -0400

    add requirements

[33mcommit b90c53a01c005624c6b7946180cc1d5f22df0bc4[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 23 09:43:35 2019 -0400

    update docs

[33mcommit 02a261852144becd2e3eded1acc2566b56a98944[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 23 09:33:59 2019 -0400

    better configuration display in API web

[33mcommit 011759a4d906a46a135f44d33f56d7c1ac9dd43c[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 23 00:43:49 2019 -0400

    update docs

[33mcommit 599da69737e20e4a5d57a357b2f2339e35496d5d[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 23 00:02:02 2019 -0400

    add API docs

[33mcommit be0d19d15658349f56cb6005d9ffe5b4481ffa62[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 22 20:56:23 2019 -0400

    limit parser choices

[33mcommit 7d32de758d658e838d893a950ece1111d8a3d2b8[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Tue Oct 22 17:25:58 2019 -0400

    Update requirements.txt

[33mcommit f545a80d81049ae1179bca8a89fde6e088141efc[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Tue Oct 22 17:23:56 2019 -0400

    Update rgbdcam_real.py

[33mcommit 1ed52e7f4bb5b0a4c9258caf234079f8e5e17b71[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Oct 22 13:45:25 2019 -0400

    removd sleep in gripper publisher setup

[33mcommit d137651c68f0ba14a114f35aacc375423228a305[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Oct 22 13:16:37 2019 -0400

    added gripper control in gazebo

[33mcommit 28e3508cbdcae2dca043143b3dc07c8e72d59464[m
Author: Tao <15166943+taochenshh@users.noreply.github.com>
Date:   Tue Oct 22 13:12:00 2019 -0400

    Update README.md

[33mcommit ca48e9bf8405155408b391bb4398850ab274d7a6[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 22 11:48:39 2019 -0400

    add pytest and coverage report

[33mcommit bb73d74610fdcf4b1e7e5d16a0005315dafd49e9[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 22 01:11:40 2019 -0400

    update pytest

[33mcommit ad6da82bb6473cbc47d37acc313c5053478f272d[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 22 01:01:33 2019 -0400

    add pytest; speed up pybullet rendering

[33mcommit c73c2e34c23eacf4965d85b025170ad75e8cb50c[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 22 00:20:45 2019 -0400

    extract single arm; add new logger; more utils

[33mcommit 19c491f347664c3180cde025c2c5e902af81c8b5[m
Author: taochenshh <chentao904@163.com>
Date:   Mon Oct 21 19:06:46 2019 -0400

    more modular code

[33mcommit 27e9639d5ca7db5086faf079f0c96a8f0948ec81[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Mon Oct 21 18:48:25 2019 -0400

    added docker

[33mcommit 53479d52821cdf16839e3d2fdfe3ab40703efac0[m
Author: taochenshh <chentao904@163.com>
Date:   Mon Oct 21 17:09:34 2019 -0400

    fix bug in number

[33mcommit 6421708d905822d01cdedde446e9f4b4e82222d4[m
Author: taochenshh <chentao904@163.com>
Date:   Mon Oct 21 16:31:47 2019 -0400

    return if the object is added successfully in moveit scene

[33mcommit 998f77c900802ed3a49d30c0eb5c7ea9b3967e67[m
Merge: a579749 699a99f
Author: taochenshh <chentao904@163.com>
Date:   Mon Oct 21 16:13:28 2019 -0400

    Merge branch 'qa' of https://github.com/Improbable-AI/airobot into qa

[33mcommit a57974950fb07e340d1845d22af552b0e72679af[m
Author: taochenshh <chentao904@163.com>
Date:   Mon Oct 21 16:12:58 2019 -0400

    more modular import

[33mcommit 699a99f51d67c7f4d5c51b30dc984f0adf0d7b19[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Mon Oct 21 16:10:37 2019 -0400

    moved camera collision object to be more accurate

[33mcommit 4e2a4258f3ffb27ade17a9ea50e1775bf661c4e5[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Mon Oct 21 15:48:39 2019 -0400

    added camera bounding box as collision object, updated moveit util for touch links on dynamic objects, and set gripper speed to max in activate

[33mcommit 080a6afebdc556238c33bafd3e1330d45b6d0da0[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Oct 20 23:54:17 2019 -0400

    pass flake8

[33mcommit c0845c5d9d0f529fb7edb4036c9da6e1de2f3de1[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Oct 20 23:36:13 2019 -0400

    delete redundant lines

[33mcommit b70c2ab9bd24a33c9d1cd2afce6a078dd573b83b[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Oct 20 23:33:53 2019 -0400

    a major architecture update

[33mcommit 1fd0fa85ca186fd30d7a6c2ffbfb65ad7d6ea1ff[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Oct 20 12:27:44 2019 -0400

    add credits for pyrobot

[33mcommit 5a7a280b33302efcbe1f3ac5e7831bf735affeeb[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Oct 20 12:25:12 2019 -0400

    add more docstrings for pitch roll yaw

[33mcommit 6b7bc6f1652dc503f76e2d8cab1195291a73e335[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Oct 20 12:21:21 2019 -0400

    use robot name for calibration result

[33mcommit 16f462732ffbe7647e0d4f06d8b7f20811ceb404[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Oct 20 12:19:37 2019 -0400

    add more docstrings

[33mcommit d705fd7e4f02c5cae541c15c2bd777f7e7cc9445[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Oct 18 11:16:25 2019 -0400

    fix the bug in set_jpos when using ur_script

[33mcommit 3fc384c7cdb7667f5a9b5898b761907e6c20d6eb[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Oct 18 00:18:40 2019 -0400

    modify realsense cam

[33mcommit 0b7a4a94f73979664ee2ab925e961ccfe64f6c5b[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 16 13:54:08 2019 -0400

    update package versions

[33mcommit 8b39063b71a8269318aab3bd1aa8fd0ab808756b[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Oct 13 18:48:21 2019 -0400

    update readme

[33mcommit 1492eca15d7b05fe248c822d71ac1c9a48ab805f[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Oct 10 13:36:42 2019 -0400

    delete euler

[33mcommit 17238c6a742f2520720370fb964e74b8c9374361[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Oct 9 16:23:09 2019 -0400

    orientation mismatch bug fixed -- movel uses rotation vector, not euler angles. examples updated and utility for quat to rotvec added

[33mcommit 170b9126ddda33c1adb7bdee2c9393691a13855e[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Oct 9 15:35:12 2019 -0400

    joint velocity and move ee xyz with moveit verified

[33mcommit b62308652820dfb7ffaeb815b87c493ead42e481[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Oct 9 14:32:55 2019 -0400

    set_ee_pose example tested, only modified EE position when in use_urscript mode, and set default planning time in ur5e_real to 2.0 sec

[33mcommit 9397e2c9cd4867838a4bf8568bd43ae786adb792[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Oct 9 12:21:38 2019 -0400

    verified joint position control example

[33mcommit 8f679378f0b404d94629370a547c347110543136[m
Merge: 07440a2 19e4e3c
Author: anthonysimeonov <35552658+anthonysimeonov@users.noreply.github.com>
Date:   Wed Oct 9 12:04:33 2019 -0400

    Merge pull request #3 from Improbable-AI/real-dev
    
    Real robot and pybullet simulation verified with pushing and grasping

[33mcommit 19e4e3c69dddba433a5ee94d992c150814bcb65b[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Oct 9 12:01:11 2019 -0400

    cleaned up examples and prepping for qa merge

[33mcommit a4a2252ec81dd0e4d68b7b6a1c27fa059e5cba84[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 9 11:59:53 2019 -0400

    update camera

[33mcommit 09efc01da572f69b1effb860e34ed1be3af45d74[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 8 21:41:49 2019 -0400

    pass flake8

[33mcommit 6b3bc6f7032fdec2b633e0e535fcab0ca54f056d[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 8 21:05:50 2019 -0400

    delete model files

[33mcommit d6752f6b185dbca788109842862f59544824833d[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 8 21:04:51 2019 -0400

    update grasping and pushing example

[33mcommit 271633569904f5801f7de37d6e3a7a31d1b682e6[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Oct 8 16:41:05 2019 -0400

    cleaned up example and internal methods to bottom of class

[33mcommit 630df0ae61bde966bdc07efb2aa97990f1c3dc03[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Mon Oct 7 22:41:21 2019 -0400

    added sleep to _setup_pub_sub to make sure set_tcp received, and modified default timeout for blocking control commands

[33mcommit 6a8011020fbb8fcc300397ad05a0a5605decdace[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Mon Oct 7 18:40:29 2019 -0400

    example skeletons

[33mcommit a355dcc5c117d7620451c0ee20169030ff541a76[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Mon Oct 7 16:36:50 2019 -0400

    updated docstrings

[33mcommit b638b059740fc15af3e63753b93d44d5cf90143a[m
Author: taochenshh <chentao904@163.com>
Date:   Mon Oct 7 11:52:40 2019 -0400

    pushing working

[33mcommit 213105ff835747d59ff90b11d8f08ae4276d5b57[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Oct 6 13:20:17 2019 -0400

    add pushing and grasping example

[33mcommit fdebe97155d3664b5b387c58a9a244db5793a7fc[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Oct 5 23:34:03 2019 -0400

    change rotation functions; return pose in numpy array

[33mcommit a8178355ebcf07ed546a62c1a14b86cdf70fdf50[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Oct 5 10:43:27 2019 -0400

    remove extra embed

[33mcommit 3f09a983307f6bddcb35f7c3c9020fbb3f574c25[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Oct 5 10:26:53 2019 -0400

    update docstring, add rotation matrix support in orientation

[33mcommit d8bb58eeb1506af40374d6a2ebc0694ed0cd0660[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Oct 4 23:21:15 2019 -0400

    fix gripper tip error in pybullet and update urdf

[33mcommit cd827bc67de8d295a31c8267a7408b6b7018f431[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Oct 4 22:53:55 2019 -0400

    add rotation matrix support in input

[33mcommit 52b489db6970d134124d1d7b7f1e9f59cd1bdf6b[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Oct 4 22:22:56 2019 -0400

    fix bugs in rgbd cam

[33mcommit b7d9fc651cd15b09dd27d844feac1c3f1f78af81[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Fri Oct 4 21:13:08 2019 -0400

    updated some docstrings

[33mcommit d8952c34843f6ca9640940103ea92239d54aa1f8[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Oct 4 20:05:33 2019 -0400

    add doc for moveit scene

[33mcommit 88397456fd31bb218e50cb80e1efd6926ead80ac[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Oct 3 21:10:53 2019 -0400

    change base

[33mcommit 53a35bb941ecfe376e00c79d37f977adab653328[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Oct 3 16:22:34 2019 -0400

    remove action client

[33mcommit e687c7968bc0eeedac25854357a4f7f855200577[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Oct 3 13:26:42 2019 -0400

    modify base reference system

[33mcommit 4c446c6728c5b300b201ae0e7cd93a13a6eb7f2e[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Oct 3 12:39:37 2019 -0400

    add imports

[33mcommit 28974fe7f3daaa8afbe31295207eb64774968004[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Thu Oct 3 12:18:51 2019 -0400

    tested set_jvel and set_jpos with urscript comm, /joint_speed topic not working

[33mcommit 0807e6db8e407332b1a9fe19945e4f0bab7ad258[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Thu Oct 3 12:01:59 2019 -0400

    gripper verified with urscript communication, speed is okay again (related to polyscope installation)

[33mcommit 4a09b1e427ef46cbeafd9c8ce0294b248d73789a[m
Merge: 49be644 7f9c4a8
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Thu Oct 3 11:30:41 2019 -0400

    Merge branch 'real-dev' of https://github.com/Improbable-AI/airobot into real-dev

[33mcommit 7f9c4a84299c352f9bbd57b9cf4f85faa6ae445b[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Oct 3 11:30:16 2019 -0400

    delete print

[33mcommit 4c4d18be45653c568817d407d9680e57fbdbb75e[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Oct 3 11:29:52 2019 -0400

    update base reference frame, consistent with real robot

[33mcommit 49be6441cd82f6fc74ad347a37f4a1724eb7db8b[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Thu Oct 3 10:44:09 2019 -0400

    tested urscript comm functionality, added sleeps after creating publishers to give time for subscriber connection

[33mcommit 30a5a98ca514a470bc53e61176ce17deb639f582[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 23:19:07 2019 -0400

    bk

[33mcommit 5de495f39c0a79a77fb14fc30e9806df2744587e[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 22:44:59 2019 -0400

    better move_ee_xyz

[33mcommit 690ea3633359d267a6ab9936403e1660c2f97d4a[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Oct 2 21:31:28 2019 -0400

    modified urscript functionality for real robot to use ur_driver/URScript instead of TCP/IP

[33mcommit f87c6d761df33e273e53f0d7376cd6a6ef66e6db[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 19:47:21 2019 -0400

    handle gripper class

[33mcommit 4b15da00fbc0892408a2d1e79ed4c1a9b29f74f2[m
Merge: fa75d3c 19b77a9
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 19:38:10 2019 -0400

    Merge branch 'real-dev' of https://github.com/Improbable-AI/airobot into real-dev

[33mcommit 19b77a94e3abe319464666748fbcef9d335ef38f[m
Merge: c656a74 3980b9d
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Oct 2 19:34:43 2019 -0400

    Merge branch 'real-dev' of https://github.com/Improbable-AI/airobot into real-dev

[33mcommit fa75d3cf4fbf104c9f3197dc76ad66d60259a4de[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 19:28:26 2019 -0400

    minor print bug

[33mcommit 3980b9d20670b60395846c4d0b544059a981576f[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 19:19:16 2019 -0400

    change base link to make moveit consistent with real robot

[33mcommit c656a746cdf3c262ca7b4321e52ab586c6fa01b9[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Oct 2 18:29:14 2019 -0400

    tested basic gripper functionality through URScript ros topics

[33mcommit df5fbb29c5f8c0aef79d804a3407ebbca1481ec6[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Oct 2 17:04:17 2019 -0400

    make robot_ip a cmd line arg for examples

[33mcommit 3f23ec6dd80573acb8504c0966d8e6c4f9a96c0d[m
Merge: c8d34ce 756137a
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Oct 2 16:51:09 2019 -0400

    removing redundant joint state subscriber and integrating new gripper class

[33mcommit c8d34ce84133b8ff692b44521ac51eb955f9dc5c[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Oct 2 16:47:55 2019 -0400

    added set joint velocity for ROS topic control, and updated more compact gripper class with new urscript functionality

[33mcommit 756137adce739ab890a768d8d24b17a02b93e0db[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 16:42:26 2019 -0400

    disable tcp for now

[33mcommit 1706f8f6ab1d3b910a29e78e5edd55845d0dbb0e[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 16:21:11 2019 -0400

    use ros to get state infor

[33mcommit 6d2a879647207144dcc5a2a08f8fab04d820bb9f[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 13:14:45 2019 -0400

    update ros flag

[33mcommit d07c9bf1100d8dcc81102eb2e7c77d6982546e41[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 10:22:29 2019 -0400

    make client name a cfg

[33mcommit df8a28df25ac6c8ab71955fe7002ce47a33a199f[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 10:20:42 2019 -0400

    move action client to follow trajectory

[33mcommit 068f4d3a2b05aac6c0f183debde7e0237cde076d[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 08:40:55 2019 -0400

    reorganize tcp

[33mcommit ce5e083658bcb7627c5efbd5614c447019cf1b18[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 08:28:59 2019 -0400

    add new gripper class

[33mcommit 57466414e5b0b05f172677662b0f8103361f7ea0[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 08:04:35 2019 -0400

    rename tcp util

[33mcommit da8c722881e279cfbb826892763fb783d35cf526[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Oct 2 07:49:06 2019 -0400

    add movej to set_ee_pose

[33mcommit 63a047cb304915a3961b1d8db68792b9d33c3a70[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 1 23:35:21 2019 -0400

    use moveit to set_ee_pose

[33mcommit ddc5904fda9aed49835b7d93f90661798f5afc61[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 1 23:06:42 2019 -0400

    modify the pybullet code

[33mcommit ee694f14148fa2155ec70219a9e1c65ae8ea237a[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 1 22:58:51 2019 -0400

    modify pybullet to make set_jpos work only for the arm

[33mcommit 85e4b3f4ca4dafd30ad0ba193a18830322b0875c[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Oct 1 22:53:37 2019 -0400

    class for simulated Robotiq2f140 in gazebo

[33mcommit ba54951564e9615e0b5b977e1d33997918f6480e[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Oct 1 22:51:13 2019 -0400

    starting TCP/IP protocol skeleton with moveit joint control and ros_control joint position control

[33mcommit 17792ced7900ac08892d91a6ff365d75e5af7afc[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 1 22:33:01 2019 -0400

    fix rotation error comparison bug

[33mcommit 0e4a3627751c54716e2e827e38cd790d3d2d2cc5[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 1 22:01:53 2019 -0400

    convert double quote into single quote

[33mcommit 6dd0ea280b241e9c346625755d71e01cabb961c0[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 1 21:46:29 2019 -0400

    move around send_program

[33mcommit ab6524a962d1a8e739954950616e6d482de6e7da[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 1 21:38:24 2019 -0400

    clean up set_jpos, jvel, ee_pose, move_xyz

[33mcommit e449cf6fb3e87d66475253fcbf23cbf563502b4f[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 1 20:49:48 2019 -0400

    test moveit

[33mcommit e52978c507139c4277064b4d26d98bc4667adae9[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Tue Oct 1 19:56:16 2019 -0400

    put sleep statement in urscript generation and modified default gripper communication port, basic gripper functionality tested

[33mcommit 3441032220122930cabce82b4f4d897890910ea2[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Oct 1 16:54:55 2019 -0400

    put position control command for gripper directly in gripper class

[33mcommit ad9af5969bc017c509bda75fa6d2d05dbcacca5a[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Oct 1 16:53:36 2019 -0400

    adding obstacles programmatically in moveit

[33mcommit 7d121fac81273ee3655c0159e1245d89963c69ad[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Fri Sep 27 20:09:22 2019 -0400

    move gripper helper classes to end effector directory for compatibility with future EEs

[33mcommit 212b153b53dcad412b5af9e7e29b106c778ad6aa[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Fri Sep 27 20:08:27 2019 -0400

    get tool center point offset and send to UR on construction of robot object

[33mcommit 482f372d90c04ea761d82b122ce7ddcf879941f8[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Fri Sep 27 18:34:34 2019 -0400

    added gripper utilities in end effector folder and gripper open/close/position interface for ur5e real

[33mcommit 0911ad93a50716da39a664d06176e6b6f0084858[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Sep 27 11:37:50 2019 -0400

    fix quaternion bugs

[33mcommit 9bbe0013bb1b93bea98a45f51fdfb848b2cbb32e[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Sep 27 10:51:17 2019 -0400

    rename host to robot_ip

[33mcommit 61c26ec86d4d77885fc29cc6aa99fdbf6d7bc373[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Sep 27 10:37:51 2019 -0400

    double quote to single

[33mcommit 1fce29deeda9273f1cb9560bc77001a7e0f3a29b[m
Merge: 788f47f b1143a8
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Thu Sep 26 21:08:40 2019 -0400

    flake8 formatting

[33mcommit 788f47fa056b1d56ff6e85172e1e3d57793b907d[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Thu Sep 26 21:07:38 2019 -0400

    added end effector position command blocking, and skeleton for gripper control. need to get base transform from urdf chain or tree for setting internal UR tool center point offset

[33mcommit b1143a83bec88173817501bd1bdf72879f24572f[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Sep 26 19:04:24 2019 -0400

    return list instead of numpy array

[33mcommit b2407c92d9a1c35dd9c8ff77198817cf9d2ae5c5[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Sep 26 17:05:49 2019 -0400

    update urdf;add fk/ik/jacobian

[33mcommit ca3e545c21f5a9708e1d76f290cfed499745bf61[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Sep 26 11:23:45 2019 -0400

    add moveit scaling

[33mcommit b8bd1998e4d86f9bb7c0647566db2dc3e22f6720[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Sep 25 20:51:41 2019 -0400

    add more cfgs

[33mcommit 453c0582e4c348d0abbf98320d741f582019a0bf[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Sep 25 19:15:11 2019 -0400

    clean up code

[33mcommit 4ad1c8b64984f36473c66c221addbb715680c519[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Sep 25 20:04:17 2019 -0400

    more docstrings and formatting for tcp_util

[33mcommit fa22f405b3c50898102cfe2a0c2f148bd2e13b6c[m
Merge: 253778f 206cf81
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Sep 25 18:19:00 2019 -0400

    flake8 formatting

[33mcommit 253778ff233f431554351583a086f3952600cb27[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Sep 25 16:55:21 2019 -0400

    docstrings and cleanup for some of the TCP message parsing functions, need to do find first packet and the whole monitor class

[33mcommit 206cf81d55f0c4fbd116c2b9287f5807ffe1fa9c[m
Author: taochenshh <chentao904@163.com>
Date:   Wed Sep 25 16:44:21 2019 -0400

    reorganize examples; add options to use arm only or use camera only

[33mcommit a9dd0a8359e10d65904b9e8ede57b5436f54c9b9[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Sep 25 14:29:34 2019 -0400

    toward cleaned up TCP monitor

[33mcommit 1f3e451b7587c1cb761ebefa7da452b47c70b717[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Sep 25 12:05:19 2019 -0400

    flake8 formatting

[33mcommit 9ff2f6a2cbcf779226597e5710f31457a2d34185[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Sep 25 10:42:55 2019 -0400

    all basic functionality tested (joint position/velocity, EE absolute pose and relative xyz pose). Need to add blocking functionality to EE commands and look at communication protocol robustness/compactness

[33mcommit cf3f643c9892b1ba7af93bf3c19638470bb1fc73[m
Author: anthonysimeonov <anthsimeonov@gmail.com>
Date:   Wed Sep 25 10:08:30 2019 -0400

    basic communication functionality and joint position control verified, home position on robot modified (base joint turned 90 degrees w.r.t. simulator

[33mcommit 61c9cd335d42d6386c298178ec2932545626234c[m
Merge: d4f7a05 00a14e0
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Sep 25 09:09:38 2019 -0400

    Merge branch 'real-dev' of github.com:Improbable-AI/airobot into real-dev

[33mcommit d4f7a05be89ddb880962db7d6d3fca76bcb04aa3[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Wed Sep 25 09:08:37 2019 -0400

    added go home method

[33mcommit 00a14e0469378f0ffaa053b0fffa34c451ab2cd9[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Sep 24 19:22:10 2019 -0400

    change util import path

[33mcommit ef43a13742a58659e5a5935ac2b8b0d4d33d13ac[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Sep 24 19:17:40 2019 -0400

    import specific functions from transforms3d, rather than whole library

[33mcommit 630394495c9c6b2b7437380538b7de0d4776e37b[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Sep 24 18:38:25 2019 -0400

    examples copied and updated for using with real robot

[33mcommit 675d65c9f8ae49c63f13958462eefa58f1297369[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Sep 24 17:53:43 2019 -0400

    basic real robot structure for controlling joint angle/velocity and ee angle/velocity. needs testing and debugging

[33mcommit 285cc540be8e1e53e99abe7e4ffd4693d29c2bf9[m
Author: anthonysimeonov <asimeono@mit.edu>
Date:   Tue Sep 24 16:56:01 2019 -0400

    utilitied for TCP communication with real robot, constructing URScript messages, and interface to control robot with same commands as simulator API

[33mcommit 7beeb05d25ce189039d91eb054fece8077781e68[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Sep 24 16:45:46 2019 -0400

    update camera

[33mcommit f540439e277f9941b939d89cdb45af0a795073e1[m
Author: taochenshh <chentao904@163.com>
Date:   Tue Sep 24 09:54:05 2019 -0400

    add realsense camera

[33mcommit 1f78c041c903d931e1bbaded08e11f027c0b0408[m
Author: taochenshh <chentao904@163.com>
Date:   Sun Sep 22 18:57:46 2019 -0400

    extract camera and make it a separate class

[33mcommit 08e6f6cf892f9dd02ac606392fe449fcd84058fa[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Sep 21 19:36:45 2019 -0400

    update urdf

[33mcommit 1d45e1383ed8009bc46ef7dab13059403728ec11[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Sep 21 15:18:40 2019 -0400

    make the gripper zero-pose consistent with the real robot

[33mcommit fb18629376b80ef43429ea6a676b51fd1b263131[m
Author: Tao Chen <taochen904@gmail.com>
Date:   Wed Sep 18 17:27:59 2019 -0400

    add camera support

[33mcommit 5ae7bdbb7995390de89fb7a93095fab0e41abe50[m
Author: Tao Chen <taochen904@gmail.com>
Date:   Mon Sep 16 21:15:37 2019 -0400

    add more docstrings

[33mcommit 366aa8c9dc3f86e0958381ff32447e54f0de0034[m
Author: Tao Chen <taochen904@gmail.com>
Date:   Mon Sep 16 19:32:15 2019 -0400

    make requirements compatible with python 2

[33mcommit 3bf6e7bcb9f01159a11a10f212ac573530acf1a2[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Sep 14 19:13:31 2019 -0400

    disable self collision on gripper while enabling self-collision on arm

[33mcommit 3fdc94e5f28c7aeb341e57cda3819d34fada8276[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Sep 14 17:16:59 2019 -0400

    update url

[33mcommit 65297112986b167064ff2203e97387766390e9bd[m
Author: taochenshh <chentao904@163.com>
Date:   Sat Sep 14 14:42:05 2019 -0400

    better docstring for func create_robot

[33mcommit 28bea547f92798e353c8416872783e5fd84561f3[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Sep 13 21:39:30 2019 -0400

    minor fix on readme

[33mcommit 88c99de40f8a91702be372d7051e72612c27f3be[m
Author: taochenshh <chentao904@163.com>
Date:   Fri Sep 13 21:36:39 2019 -0400

    add examples, docstrings (google style), code pass flake8

[33mcommit cfe610a52a888d067ed014477b9cc7eb24f50474[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Sep 12 23:27:07 2019 -0400

    clean up some code

[33mcommit 09d8d896a877cece97b88c453d836afd06754dc8[m
Author: taochenshh <chentao904@163.com>
Date:   Thu Sep 12 22:29:19 2019 -0400

    initial commit

[33mcommit 07440a2ec5f3a215c39559e3c47d344cb537981a[m
Author: Tao <taochen904@gmail.com>
Date:   Thu Sep 12 22:27:48 2019 -0400

    Initial commit
