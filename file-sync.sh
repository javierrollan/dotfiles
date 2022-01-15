#!/bin/bash

while true; do
	inotifywait -r -e modify,attrib,close_write,move,create,delete "/home/javi/.config/nvim" "/home/javi/.config/rofi" "/home/javi/.config/bspwm" "/home/javi/.config/picom" "/home/javi/.config/sxhkd" "/home/javi/.config/polybar"
	rsync -avz /home/javi/.config/{nvim,rofi,bspwm,picom,sxhkd,polybar} /home/javi/Proyectos/dotfiles
done
