#!/bin/bash

xhost +

docker run \
    -it --rm --net=host --privileged \
    --name "my_ros_container" \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    -e XAUTHORITY \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="${PWD}/workspace":"/workspace":rw \
    my_noetic