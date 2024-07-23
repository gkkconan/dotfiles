#!/bin/bash
# __     _____  _    _   _ __  __ _____ 	 ____ ___  _   _ _____ ____   ___  _     ____  
# \ \   / / _ \| |  | | | |  \/  | ____|    / ___/ _ \| \ | |_   _|  _ \ / _ \| |   / ___| 
#  \ \ / / | | | |  | | | | |\/| |  _|     | |  | | | |  \| | | | | |_) | | | | |   \___ \ 
#   \ V /| |_| | |__| |_| | |  | | |___    | |__| |_| | |\  | | | |  _ <| |_| | |___ ___) |
#    \_/  \___/|_____\___/|_|  |_|_____|	\____\___/|_| \_| |_| |_| \_\\___/|_____|____/
#
# Author: gkkconan
# Contact: conan.gkk@gmail.com
#
# comments: useless, already resolved with wpctl



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