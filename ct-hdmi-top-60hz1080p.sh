#!/bin/bash

echo "connecting HDMI monitor at 1080p 60hz"

xrandr --output HDMI-A-0 --mode 1920x1080 --rate 60.00 --above eDP

echo "connected"

