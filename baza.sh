#!/bin/bash

echo "beep boop connecting to desktop"
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
if xrandr | grep -q 'DisplayPort-2 connected' ; 
then
	xrandr --output DisplayPort-2 --rotate right --mode 1920x1080 --rate 60.00 --left-of eDP
    xrandr --output DisplayPort-4 --mode 1920x1080 --rate 120.00 --left-of DisplayPort-2 --pos 0x840
    i3-msg '[workspace="1"]' move workspace to output DisplayPort-4
    i3-msg '[workspace="2"]' move workspace to output DisplayPort-2

elif xrandr | grep -q 'DisplayPort-3 connected' ; 
then
    xrandr --output DisplayPort-3 --rotate right --mode 1920x1080 --rate 60.00 --left-of eDP
    xrandr --output DisplayPort-6 --mode 1920x1080 --rate 120.00 --left-of DisplayPort-3 --pos 0x840
    i3-msg '[workspace="1"]' move workspace to output DisplayPort-6
    i3-msg '[workspace="2"]' move workspace to output DisplayPort-3

elif xrandr | grep -q 'DisplayPort-5 connected' ; 
then
    xrandr --output DisplayPort-5 --rotate right --mode 1920x1080 --rate 60.00 --left-of eDP
    xrandr --output DisplayPort-8 --mode 1920x1080 --rate 120.00 --left-of DisplayPort-5 --pos 0x840
    i3-msg '[workspace="1"]' move workspace to output DisplayPort-8
    i3-msg '[workspace="2"]' move workspace to output DisplayPort-5
fi

i3-msg '[workspace="3"]' move workspace to output eDP
i3-msg '[workspace="4"]' move workspace to output eDP

setxkbmap -layout us,ru -option grp:alt_space_toggle

echo "--- --- --- --- --- --- ---"
echo -e "connected!!!!     successs!!! \nyeaaahhhhh!! lets gooooo!!!\n"

exit 0
