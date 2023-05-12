#!/bin/bash

echo "disconnecting from both monitors"

xrandr --output DisplayPort-0 --off
xrandr --output HDMI-A-0 --off

echo "disconnected"