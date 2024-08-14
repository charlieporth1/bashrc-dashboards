#!/bin/bash

bin=cmatrix
if ! command -v $bin > /dev/null; then
        sudo apt install -y $bin
fi

export timeo=32

while true
do
	if [[ -f ~/dashboard-rc.sh ]]; then
		~/dashboard-rc.sh
	fi
	sleep 10
	reset
	(
		sleep $timeo
		pkill -9 cmatrix
	)&
	cmatrix
done
