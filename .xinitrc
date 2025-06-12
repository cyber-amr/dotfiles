#!/bin/bash

if command -v setxkbmap >/dev/null; then
    setxkbmap -layout us,ara -option grp:win_space_toggle
fi

xmodmap ~/.Xmodmap &
