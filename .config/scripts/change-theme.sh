
currentTheme=$(grep "^theme=" ~/.environment | cut -d '=' -f2)

if [ -z "$currentTheme" ]; then
	echo "theme=dark" > ~/.environment
else
	if [ "$currentTheme" = "light" ]; then
		currentTheme="dark"
	else
		currentTheme="light"
	fi
	# sed -i "s/^theme=.*/theme=$currentTheme/" ~/.environment
	echo "theme=$currentTheme" > ~/.environment
	export theme=$currentTheme
fi


pid=$(pgrep swww)

if [ -n "$pid" ]; then killall swww; fi
swww-daemon

if [[ $currentTheme = "light" ]]; then
	swww img --transition-type center --transition-pos 20,20 ~/.config/hypr/wallpapers/escher-light-wallpaper.png
	sed -i 's/col\.active_border = rgb(ffffff)/col\.active_border = rgb(000000)/g' ~/.config/hypr/hyprland.conf
	echo "@define-color theme rgb(0, 0, 0); @define-color coral-pink #FF928B;" > ~/.config/hypr/palette.css
elif [[ $currentTheme = "dark" ]]; then
	swww img --transition-type center --transition-pos 20,20 ~/.config/hypr/wallpapers/black-pantone-color-wallpaper.jpg
	sed -i 's/col\.active_border = rgb(000000)/col\.active_border = rgb(ffffff)/g' ~/.config/hypr/hyprland.conf
	echo "@define-color theme rgb(255, 255, 255); @define-color coral-pink #FF928B;" > ~/.config/hypr/palette.css
fi

