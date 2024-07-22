#!/bin/bash

entries=" Lock \n Logout\n⏾ Suspend\n⭮ Reboot\n⏻ Shutdown"

selected=$(echo -e $entries|wofi --width 300 --height 250 --dmenu --lines 6 | awk '{print tolower($2)}')

case $selected in
	lock)
    		nohup hyprlock > ~/.config/hypr/nohup-hyprlock.out;;
 	logout)
     		# nohup hyprlock > ~/.config/hypr/nohup-hyprlock.out;
		# exec systemctl suspend;;
		exec nohup hyprlock > ~/.config/hypr/nohup-hyprlock.out &
		systemctl suspend;;
 	suspend)
    		exec systemctl suspend;;
  	reboot)
    		exec systemctl reboot;;
  	shutdown)
    		exec systemctl poweroff -i;;
esac
