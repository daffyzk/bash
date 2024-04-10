#!/bin/bash

echo "starting up dock config..."
echo "--- --- --- --- --- --- ---"

print_funny(){
    if [[ $1 -gt 7 ]]
    then 
        echo -e "eldenring connection...\n"
    else
        echo -e "attempting connection...\n"
    fi
}

print_funny $(($RANDOM % 10 + 1 ))
if xrandr | grep -q '\<DP-1 connected\>' ; 
then
    xrandr --output DP-1 --mode 1920x1080 --rate 60.00 --left-of eDP-1
    i3-msg '[workspace="1"]' move workspace to output DP-1
fi
setxkbmap -layout us,es,ru -option grp:alt_space_toggle

exit 0

