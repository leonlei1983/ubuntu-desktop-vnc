#!/bin/bash

/usr/bin/vncserver :1 && \
ln -sf vnc_auto.html /root/noVNC/index.html && \
/root/noVNC/utils/launch.sh --vnc localhost:5901
