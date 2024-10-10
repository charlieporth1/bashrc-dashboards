#!/bin/bash
if ! xrandr &>/dev/null; then
	apt install -y xrandr
fi

setterm -blank 0 -powerdown 0
xrandr -o inverted
echo 2 > /sys/class/graphics/fbcon/rotate_all
