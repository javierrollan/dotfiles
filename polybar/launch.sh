#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch top bar & bottom bar
polybar -c $HOME/.config/polybar/config.ini top &
polybar -c $HOME/.config/polybar/config.ini down &
