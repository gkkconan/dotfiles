#!/bin/bash

# ###################### #
#      COLOR PICKER      #
# ###################### #

color=$(hyprpicker)

if [ -n "$color" ]; then
    dunstify -a System -u normal "Selected Color: $color" --action="default,Copy"
    wl-copy $color
    dunstify -a System -u normal "Color: $color copied" -t 1500
fi