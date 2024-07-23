#!/bin/bash

#-------------------------------------------------
#----- DUNST RESTART
#-------------------------------------------------


pid=$(pgrep dunst)

if [ -n "$pid" ]; then
  killall dunst
  if [ $? -eq 0 ]; then
    echo "Dunst killed suxcefully"
  else
    echo "Error while killing Dunst"
  fi
else
  echo "Dunst is not executed"
fi

dunst &
sleep 1

notify-send "test low (10sec duration)" -u "low" -a LowNotification -t 10000
notify-send "test low" -u "low" -a LowNotification
notify-send "test normal" -u "normal" -a NormalNotification
notify-send "test critical" -u "critical" -a CriticalNotification