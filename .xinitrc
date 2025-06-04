if command -v xmodmap >/dev/null; then
    xmodmap -e "clear lock" -e "keysym Caps_Lock = Super_L" -e "add mod4 = Super_L"
fi

if command -v setxkbmap >/dev/null; then
    setxkbmap -layout us,ara -option grp:win_space_toggle
fi
