#!/bin/bash

echo "disconnecting DisplayPort-0 monitor"

xrandr --output DisplayPort-0 --off

echo "disconnected"

exit 0