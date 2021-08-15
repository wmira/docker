#!/bin/bash

docker run -it --name vscode -e DISPLAY="$DISPLAY" --net=host -v /tmp/.X11-unix:/tmp/.X11-unix vscode:latest
