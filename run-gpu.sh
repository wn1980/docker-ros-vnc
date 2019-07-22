#!/usr/bin/env bash

docker run -d -p 5901:5901 -p 6901:6901 \
  --runtime=nvidia \
  --ipc=host \
  --volume="$PWD:$HOME" \
  -e NVIDIA_VISIBLE_DEVICES=0 \
  wn1980/ros-vnc:gpu
