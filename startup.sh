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
    if xrandr | grep -q 'DP-3 connected' ; 
    then
        xrandr --output DP-3 --rotate right --mode 1920x1080 --rate 60.00 --left-of eDP-1
        xrandr --output DP-5 --mode 1920x1080 --rate 120.00 --left-of DP-3 --pos 0x840
        i3-msg '[workspace="1"]' move workspace to output DP-5
        i3-msg '[workspace="2"]' move workspace to output DP-3
    fi

    i3-msg '[workspace="3"]' move workspace to output eDP-1
    i3-msg '[workspace="4"]' move workspace to output eDP-1
else
    echo "dock is not connected..."
fi
setxkbmap -layout us,ru -option grp:alt_space_toggle

echo "--- --- --- --- --- --- ---"
echo "things didn't end horribly wrong"

exit 0

