#!/bin/bash
export CLICOLOR_FORCE=1
export timeo=32

setterm  -powerdown 0

bin=cmatrix
if ! command -v $bin > /dev/null; then
        sudo apt install -y $bin
fi


cmatrix
