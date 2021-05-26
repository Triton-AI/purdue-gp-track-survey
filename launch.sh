# !/bin/bash

sudo docker run --name purduesurvey -it --rm \
  --privileged \
  --network=host \
  --mount type=volume,source=purdue-survey,dst=/root/ros_ws \
  --env="DISPLAY=$DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --env="XAUTHORITY=$XAUTH" \
  --volume="$XAUTH:$XAUTH" \
  haoru233/purdue-gp-track-survey 
