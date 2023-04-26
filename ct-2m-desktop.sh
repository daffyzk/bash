#!/bin/bash

echo "beep boop connecting to desktop"

xrandr --output DisplayPort-0 --mode 1920x1080 --rate 60.00 --above eDP
xrandr --output HDMI-A-0 --mode 1920x1080 --rate 60.00 --right-of DisplayPort-0

echo "connected"