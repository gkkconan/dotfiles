



if [ -z "$1" ]; then
  notify-send -a "System" "Nessuna rice selezionata"
  exit 1
fi

output=$(git checkout "$1" 2>&1)

if [ $? -eq 0 ]; then
  notify-send -a "System" "Cambio alla rice: $1"
else
  notify-send -a "System" "Errore nel cambiare rice: \n$output" -u "critical"
fi

killall waybar
nohup waybar > /dev/null
nohup ~/.config/scripts/restart-hyprpaper.sh > /dev/null
