#!/bin/bash

echo "beep boop connecting to desktop"

xrandr --output DisplayPort-0 --auto --above eDP
xrandr --output DisplayPort-1 --auto --right-of DisplayPort-0

echo "connected"