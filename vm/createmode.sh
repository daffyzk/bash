#!/bin/bash/

echo "test"

xrandr --newmode "1680x980_60.00"  136.50  1680 1784 1960 2240  980 983 993 1017 -hsync +vsync

xrandr --addmode Virtual-1 1680x980_60.00

xrandr --newmode "1800x870_60.00"  128.50  1800 1904 2088 2376  870 873 883 903 -hsync +vsync

xrandr --addmode Virtual-1 1800x870_60.00

echo "done"
