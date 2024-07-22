#!/bin/bash

# ========================================================= #
#   USELESS - RESOLVED VOLUME CONTROLS PROBLEM WITH WPCTL
# ========================================================= #

if [[ $1 = "--up" ]]; then
	pamixer -i 5
elif [[ $1 = "--down" ]]; then
	pamixer -d 5
else
	cat <<- _OEF_
	No option specified, These are the options available:
	--up
	--down

	_OEF_
fi

exit 0
!/bin/bash
