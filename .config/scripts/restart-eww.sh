#!/bin/bash

#-------------------------------------------------
#----- EWW RESTART
#-------------------------------------------------


killall eww
sleep 0.2

nohup eww open control-panel > ~/.config/eww/nohup-eww.out
