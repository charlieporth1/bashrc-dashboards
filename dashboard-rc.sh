#!/bin/bash
export CLICOLOR_FORCE=1

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

figlet "Welcome to RACK #2" | lolcat -f
ansiweather -l Edina,US -f 3
sensors | grep temp1 | lolcat -f
