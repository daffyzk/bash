#!/bin/bash

echo "beep boop connecting to desktop"

xrandr --output DisplayPort-4 --mode 1920x1080 --rate 60.00 --left-of DisplayPort-2
xrandr --output DisplayPort-2 --mode 1920x1080 --rate 60.00 --left-of eDP

echo "connected"