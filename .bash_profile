# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# apply remapings
command -v xmodmap >/dev/null && xmodmap -e "clear lock" -e "keysym Caps_Lock = Super_L" -e "add mod4 = Super_L"
