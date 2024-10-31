#!/bin/bash

#-------------------------------------------------
#----- HYPRPAPER RESTART
#-------------------------------------------------


killall hyprpaper
sleep 0.2

nohup hyprpaper > ~/.config/hypr/nohup-hyprpaper.out
