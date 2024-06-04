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

if lsusb | grep -q 'Lenovo 40AS' ;
then
    print_funny $(($RANDOM % 10 + 1 ))
    if xrandr | grep -q '\<DisplayPort-2 connected\>' ; 
    then
        xrandr --output DisplayPort-3 --mode 1920x1080 --rate 240.00 --right-of eDP --rotate normal
        xrandr --output DisplayPort-2 --mode 1920x1080 --rate 60.00 --right-of DisplayPort-3 --rotate normal
        i3-msg '[workspace="1"]' move workspace to output DisplayPort-3
        i3-msg '[workspace="2"]' move workspace to output DisplayPort-2
    elif xrandr | grep -q '\<DisplayPort-4 connected\>' ; 
    then
        xrandr --output DisplayPort-5 --mode 1920x1080 --rate 240.00 --right-of eDP
        xrandr --output DisplayPort-4 --mode 1920x1080 --rate 60.00 --right-of DisplayPort-5 --rotate normal
        i3-msg '[workspace="1"]' move workspace to output DisplayPort-4
        i3-msg '[workspace="2"]' move workspace to output DisplayPort-5
    fi

    i3-msg '[workspace="3"]' move workspace to output eDisplayPort-1
    i3-msg '[workspace="4"]' move workspace to output eDisplayPort-1
    echo "--- --- --- --- --- --- ---"
    echo "good job, things didn't end horribly wrong..."
else
    echo "either the dock is not connected or something else is fucked up..."
fi
#setxkbmap -layout us,es,ru -option grp:alt_space_toggle

exit 0

