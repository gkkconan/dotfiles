#!/bin/bash

#-------------------------------------------------
#----- WAYBAR RESTART
#-------------------------------------------------

pid=$(pgrep waybar)

if [ -n "$pid" ]; then
	killall waybar
else
	nohup waybar > ~/.config/waybar/nohup-waybar.out
fi
