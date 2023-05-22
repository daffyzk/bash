#!/bin/bash

echo "disconnecting from both monitors"

xrandr --output HDMI-A-0 --off
xrandr --output DisplayPort-0 --off
xrandr --output DisplayPort-1 --off
xrandr --output DisplayPort-2 --off
xrandr --output DisplayPort-3 --off
xrandr --output DisplayPort-4 --off

echo "disconnected"

exit 0