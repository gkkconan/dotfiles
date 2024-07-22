#!/bin/bash
# SCREENSHOT SCRIPT

dir="`xdg-user-dir PICTURES`/Screenshots"
filename="screen_$(date +"%H%M%S_%d%m%Y").png"


FullScreenshot(){
	grim "$dir"/"$filename"
	wl-copy < "$dir"/"$filename"
	notify-send "Screenshot copied and saved" -u "low" -a "System" -t 2500
}

PartialScreenshot(){
	grim -g "$(slurp)" "$dir"/"$filename"
	wl-copy < "$dir"/"$filename"
	notify-send "Screenshot copied and saved" -u "low" -a "System" -t 2500
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
