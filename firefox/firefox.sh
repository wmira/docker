#!/bin/bash

docker run --name firefox -it -e DISPLAY="$DISPLAY" --net=host -v /tmp/.X11-unix:/tmp/.X11-unix firefox:latest

