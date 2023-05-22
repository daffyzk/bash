#!/bin/bash

echo "beep boop connecting to desktop"

print_funny(){
    if [[ $1 -gt 7 ]]
    then 
        echo "eldenring connection..."
    else
        echo "attempting connection..."
    fi
}

for i in {1..2} 
do
    print_funny $(($RANDOM % 10 + 1 ))
    xrandr --output DisplayPort-4 --mode 1920x1080 --rate 120.00 --left-of DisplayPort-2
    xrandr --output DisplayPort-2 --mode 1920x1080 --rate 60.00 --left-of eDP
done

setxkbmap -layout us

echo "connected!!!! successs!!! yeaaahhhhh!! lets gooooo!!!"

exit 0