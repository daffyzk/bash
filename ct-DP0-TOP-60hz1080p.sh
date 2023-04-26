#!/bin/bash

echo "connecting DisplayPort_0 monitor at 1080p 60hz"

xrandr --output DisplayPort-0 --mode 1920x1080 --rate 60.00 --above eDP

echo "connected"
