#!/bin/bash
export CLICOLOR_FORCE=1
export timeo=32

setterm  -powerdown 0

# https://unix.stackexchange.com/questions/13019/description-of-kernel-printk-values
sysctl -w kernel.printk="0 0 0 0"
bin=cmatrix
if ! command -v $bin > /dev/null; then
        sudo apt install -y $bin
fi


while true
do
        reset
        if [[ -f ~/dashboard-rc.sh ]]; then
                ~/dashboard-rc.sh
        fi
        sleep 10
        reset
	~/matrix-rc.sh
        reset
done
