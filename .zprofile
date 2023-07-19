~/.local/bin/hyprwal
if [ "$(tty)" = "/dev/tty1" ]; then
    Hyprland > /dev/null 2>&1
fi
