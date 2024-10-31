#!/bin/bash

currentTheme=$(grep "^theme=" ~/.environment | cut -d '=' -f2)

swww kill
swww-daemon


if [ -z "$currentTheme" ]; then
	echo "theme=dark" > ~/.environment
	export theme="dark"
else
	if [[ $currentTheme = "light" ]]; then
		swww img ~/.config/hypr/wallpapers/escher-light-wallpaper.png
	else
		swww img ~/.config/hypr/wallpapers/black-pantone-color-wallpaper.jpg
	fi
fi
