#!/bin/bash

ES=$1

if [[ -e $ES ]]; then

    sudo echo 150 > /sys/class/backlight/intel_backlight/brightness
else
    
    sudo echo $ES > /sys/class/backlight/intel_backlight/brightness
fi
