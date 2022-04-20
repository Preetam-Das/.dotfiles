xinput set-prop "ELAN1301:00 04F3:3128 Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "ELAN1301:00 04F3:3128 Touchpad" "libinput Natural Scrolling Enabled" 1

xsetroot -cursor_name left_ptr 
dunst &
pgrep picom --experimental-backends || picom --experimental-backends &
xbindkeys
#conky &
#exec alacritty
#feh --bg-fill wallpapers/favs/ --randomize
#wal -i wallpapers/anime/ --iterative
#cp ~/.cache/wal/colors.sh ~/.cache/wal/glava.sh
#wal --theme random_dark -b "#191919"
wal -s -t -i wallpapers/favs/ -b "#191919" && cp .cache/wal/colors.sh .cache/wal/dmenu_colors.sh && cp .cache/wal/colors .cache/wal/colors2
wal -e --t random_dark -b "#191919"
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
exec bspwm
#export XDG_SESSION_TYPE=x11
#export GDK_BACKEND=x11
#exec gnome-session
