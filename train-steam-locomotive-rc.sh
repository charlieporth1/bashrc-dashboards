#!/bin/bash

bin=sl
if ! command -v $bin > /dev/null; then
	sudo apt install -y $bin
fi

sl
