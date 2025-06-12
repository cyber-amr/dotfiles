#!/bin/bash

udevadm monitor --udev --subsystem-match=input | while read line; do
	 if echo "$line" | grep -q "UDEV.*add.*input"; then
		 sleep 5
		 DISPLAY=:0 setxkbmap -layout us,ara,ru -option grp:win_space_toggle
		 DISPLAY=:0 xmodmap ~/.Xmodmap
	 fi
done &
