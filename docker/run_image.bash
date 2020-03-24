IMAGE=anthonysimeonov/airobot-cuda-dev:latest
IMAGE=richardrl/airobot:latest
XAUTH=/tmp/.docker.xauth
CAMERA_CALIB_DIR=$PWD/../../camera_calib
BANDU_CODE=/scratch/rli14/improbable/bandu_code/bandu
GELSIGHT_DIR=/scratch/rli14/improbable/gelsights-mit/lobster_ws/src/lobster-gripper/lobster_dots
TRACKING_DIR=/scratch/rli14/improbable/tracking
if [ ! -f $XAUTH ]
then
    xauth_list=$(xauth nlist :0 | sed -e 's/^..../ffff/')
    if [ ! -z "$xauth_list" ]
    then
        echo $xauth_list | xauth -f $XAUTH nmerge -
    else
        touch $XAUTH
    fi
    chmod a+r $XAUTH
fi

echo $PWD

docker run -it \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --volume="$CAMERA_CALIB_DIR/:/root/catkin_ws/src/camera_calibration/" \
    --volume="$GELSIGHT_DIR/:/root/catkin_ws/src/lobster_dots/" \
    --volume="$PWD/../:/home/improbable/airobot/" \
    --volume="$TRACKING_DIR/../:/home/improbable/tracking/" \
    --volume="$BANDU_CODE/:/home/improbable/bandu" \
    --privileged \
    --runtime=nvidia \
    --net=host \
    --entrypoint='' \
    ${IMAGE} \
    bash
