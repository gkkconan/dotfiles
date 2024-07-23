#!/bin/bash

# ####################### #
#      SETTINGS MENU      #
# ####################### #

pid=$(pgrep eww)

if [ -n "$pid" ]; then
    kill $pid
    if [ $? -eq 0 ]; then
        echo "Eww killed suxcefully"
    else
        echo "Error while killing Eww"
    fi
else
    nohup eww open example > ~/.config/eww/nohup-eww.out
fi