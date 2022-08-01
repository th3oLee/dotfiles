#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/cuts"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
MONITOR=eDP1 polybar -q top -c "$DIR"/config.ini &
MONITOR=eDP1 polybar -q bottom -c "$DIR"/config.ini &
MONITOR=HDMI1 polybar -q top -c "$DIR"/config.ini &
MONITOR=HDMI1 polybar -q bottom -c "$DIR"/config.ini &
