#!/bin/bash

# works on arch (not sure with the latest changes)

echo "starting up dock config..."
echo "--- --- --- --- --- --- ---"

LAPTOP="eDP"
DP="DiplayPort-"

print_funny(){
    if [[ $1 -gt 7 ]]
    then 
        echo -e "eldenring connection...\n"
    else
        echo -e "attempting connection...\n"
    fi
}

connect() {
    xrandr --output $1 --mode 1920x1080 --rate 60.00 --right-of $LAPTOP
    xrandr --output $2 --mode 1920x1080 --rate 60.00 --right-of $2 --rotate left
    MSG="workspace 1; move workspace to output $1; workspace 2; move workspace to output $2"
    i3-msg $MSG
}

if lsusb | grep -q 'Lenovo USB-C Dock' ;
then
    print_funny $(($RANDOM % 10 + 1 ))
    if xrandr | grep -q '\<DisplayPort-2 connected\>' ; 
    then
        PRIMARY="3"
        SECONDARY="2"
        connect "$DP$PRIMARY" "$DP$SECONDARY"
    elif xrandr | grep -q '\<DisplayPort-4 connected\>' ; 
    then
        PRIMARY="5"
        SECONDARY="4"
        connect "$DP$PRIMARY" "$DP$SECONDARY"
    fi
    MSG="workspace 3; move workspace to output $LAPTOP; workspace 4; move workspace to output $LAPTOP"
    i3-msg $MSG
    echo "--- --- --- --- --- --- ---"
    echo "good job, things didn't end horribly wrong..."    
else
    echo "either the dock is not connected or something else is fucked up..."
fi
setxkbmap -layout us altgr-intl,ru -option grp:alt_space_toggle

exit 0

