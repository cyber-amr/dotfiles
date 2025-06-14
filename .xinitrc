#!/bin/bash

setup_kb() {
	setxkbmap -layout us,ara,ru -option grp:win_space_toggle
    xmodmap ~/.Xmodmap
}

setup_kb

udevadm monitor --udev --subsystem-match=input | while read line; do
	 if echo "$line" | grep -q "UDEV.*add.*input"; then
		sleep 5
        setup_kb
	 fi
done &