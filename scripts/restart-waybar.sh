#!/bin/bash

# ######################## #
#      WAYBAR RESTART      #
# ######################## #

killall waybar
sleep 0.2

nohup waybar > ~/.config/waybar/nohup-waybar.out