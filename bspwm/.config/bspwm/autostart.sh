#!/usr/bin/sh

killall sxhkd
sxhkd -c ~/.config/bspwm/sxhkdrc &

killall compton
compton --config ~/.config/compton/config

~/.config/polybar/launch.sh
