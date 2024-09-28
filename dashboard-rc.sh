#!/bin/bash
export CLICOLOR_FORCE=1

setterm  -powerdown 0

bin=figlet
if ! command -v $bin > /dev/null; then
	sudo apt install -y $bin
fi

bin=lolcat
if ! command -v $bin > /dev/null; then
	sudo apt install -y $bin
fi

bin=ansiweather
if ! command -v $bin > /dev/null; then
	sudo apt install -y $bin
fi

bin=sensors
if ! command -v $bin > /dev/null; then
	sudo apt install -y lm-sensors
fi

case $HOSTNAME
in
	charles-nano-5-desktop )
		rack_num=1
	;;
	nano-desktop )
		rack_num=2
	;;
esac

figlet "Welcome to RACK #$rack_num" | lolcat -f --spread 1.0 --freq=0.1
ansiweather -l Edina,US -f 3 -u imperial
sensors | grep temp1 | lolcat -f --spread 1.0 --freq=0.1
