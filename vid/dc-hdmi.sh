#!/bin/bash

echo "disconnecting HDMI monitor"

xrandr --output HDMI-A-0 --off

echo "disconnected"

exit 0