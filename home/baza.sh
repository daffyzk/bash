#!/bin/bash

# i think this one is for horizontal + manjaro or something

echo "starting up dock config..."
echo "--- --- --- --- --- --- ---"

LAPTOP="eDP-1"

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
    if xrandr | grep -q '\<DP-3 connected\>' ; 
    then
        PRIMARY="DP-4"
        SECONDARY="DP-3"
        xrandr --output $PRIMARY --mode 1920x1080 --rate 60.00 --right-of $LAPTOP
        xrandr --output $SECONDARY --mode 1920x1080 --rate 60.00 --right-of $PRIMARY
        MSG="workspace 1; move workspace to output $PRIMARY; workspace 2; move workspace to output $SECONDARY"
        i3-msg $MSG

    elif xrandr | grep -q '\<DP-5 connected\>' ; 
    then
        PRIMARY="DP-6"
        SECONDARY="DP-5"
        xrandr --output $PRIMARY --mode 1920x1080 --rate 60.00 --right-of $LAPTOP
        xrandr --output $SECONDARY --mode 1920x1080 --rate 60.00 --right-of $PRIMARY
        MSG="workspace 1; move workspace to output $PRIMARY; workspace 2; move workspace to output $SECONDARY"
        i3-msg $MSG
    fi
    COMMON_MSG="workspace 3; move workspace to output $LAPTOP; workspace 4; move workspace to output $LAPTOP"
    i3-msg $COMMON_MSG
    echo "--- --- --- --- --- --- ---"
    echo "good job, things didn't end horribly wrong..."
else
    echo "either the dock is not connected or something else is fucked up..."
fi
setxkbmap -layout us,es,ru -option grp:alt_space_toggle

exit 0

