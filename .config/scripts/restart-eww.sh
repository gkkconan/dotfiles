#!/bin/bash

# ##################### #
#      EWW RESTART      #
# ##################### #

killall eww
sleep 0.2

nohup eww open example > ~/.config/eww/nohup-eww.out