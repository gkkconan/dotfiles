#!/bin/bash
#   ____ ___  _     ___  ____      ____ ___ ____ _  _______ ____  
#  / ___/ _ \| |   / _ \|  _ \    |  _ \_ _/ ___| |/ / ____|  _ \ 
# | |  | | | | |  | | | | |_) |   | |_) | | |   | ' /|  _| | |_) |
# | |__| |_| | |__| |_| |  _ <    |  __/| | |___| . \| |___|  _ < 
#  \____\___/|_____\___/|_| \_\   |_|  |___\____|_|\_\_____|_| \_\
#
# Author: gkkconan
# Contact: conan.gkk@gmail.com



color=$(hyprpicker)

if [ -n "$color" ]; then
    notify=$(dunstify -a System -u normal "Selected Color: $color" --action="default, Copy" -h string:x-dunst-stack-tag:color-picker)
    [ "$notify" = "default" ] && {
        wl-copy $color
        dunstify -a System -u normal "Selected Color: $color copied" -t 1500 -h string:x-dunst-stack-tag:color-picker
    }
fi