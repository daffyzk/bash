#!/bin/bash

echo "disconnecting from both monitors"

xrandr --output HDMI-A-0 --off
xrandr --output DisplayPort-0 --off
xrandr --output DisplayPort-1 --off
xrandr --output DisplayPort-2 --off
xrandr --output DisplayPort-3 --off
xrandr --output DisplayPort-4 --off
xrandr --output DisplayPort-5 --off
xrandr --output DisplayPort-6 --off
xrandr --output DisplayPort-7 --off
xrandr --output DisplayPort-8 --off

echo "disconnected"

exit 0
