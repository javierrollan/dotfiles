#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch bar1 and bar2

polybar -c $HOME/.config/polybar/config top &
polybar -c $HOME/.config/polybar/config down &

echo "Bars launched..."
