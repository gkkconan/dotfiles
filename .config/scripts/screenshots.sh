#!/bin/bash
#  ____   ____ ____  _____ _____ _   _ ____  _   _  ___ _____ ____  
# / ___| / ___|  _ \| ____| ____| \ | / ___|| | | |/ _ \_   _/ ___| 
# \___ \| |   | |_) |  _| |  _| |  \| \___ \| |_| | | | || | \___ \ 
#  ___) | |___|  _ <| |___| |___| |\  |___) |  _  | |_| || |  ___) |
# |____/ \____|_| \_\_____|_____|_| \_|____/|_| |_|\___/ |_| |____/ 
#
# Author: gkkconan
# Contact: conan.gkk@gmail.com



dir="`xdg-user-dir PICTURES`/Screenshots"
filename="screen_$(date +"%H%M%S_%d%m%Y").png"

FullScreenshot(){
	grim "$dir"/"$filename"
	wl-copy < "$dir"/"$filename"
	notify=$(dunstify -a System -u "low" --action="default, open_image" "Screenshot copied and saved" -t 2500 -h string:x-dunst-stack-tag:color-picker)
	[ "$notify" = "default" ] && {
		nautilus "$dir"/"$filename"
		dunstify -a System -u normal "Opening screenshot..." -t 1500 -h string:x-dunst-stack-tag:color-picker
	}
}

PartialScreenshot(){
	grim -g "$(slurp)" "$dir"/"$filename"
	wl-copy < "$dir"/"$filename"
	notify=$(dunstify -a System -u low --action="default, open_image" "Screenshot copied and saved" -t 2500 -h string:x-dunst-stack-tag:color-picker)
	[ "$notify" = "default" ] && {
		nautilus "$dir"/"$filename"
		dunstify -a System -u normal "Opening screenshot..." -t 1500 -h string:x-dunst-stack-tag:color-picker
	}
}


if [[ ! -d "$dir" ]]; then
	mkdir -p "$dir"
fi

if [[ $1 = "--full" ]]; then
	FullScreenshot
elif [[ $1 = "--partial" ]]; then
	PartialScreenshot
else
	cat <<- _OEF_
	No option specified, These are the options available:
	--full
	--partial

	_OEF_
fi

exit 0
!/bin/bash
