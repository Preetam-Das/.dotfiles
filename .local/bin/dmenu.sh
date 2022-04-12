#!/bin/sh

. "${HOME}/.cache/wal/dmenu_colors.sh"

# l=0

# if [[ $(xwininfo -name "polybar-mybar_eDP" | grep "Map State") == *"IsUnMapped"* ]];
# then
# 	bspc config -d focused top_padding 24
# 	bspc config -d focused top_monocle_padding 1 
# 	if [[ $(bspc config -d focused window_gap) == 0 ]];
# 	then
# 		bspc config -d focused top_padding 30
# 	fi
# 	l=1
# fi

# if [[ $(xwininfo -name "polybar-mybar_eDP" | grep "Map State") == *"IsViewable"* ]];
# then
# 	polybar-msg cmd hide
# fi

dmenu -nb "$color0" -nf "$color15" -sb "$color1" -sf "#fff" -i -l 30 -p "Search:"
# while :
# do
# 	sleep 0.1 
# 	if [[ $(xwininfo -tree -root) != *"dmenu"* ]];
# 	then
# 		break
# 	fi
# done
# sleep 0.01
# if [[ $l == 0 ]];
# then
# 	polybar-msg cmd show
# fi
# bspc config -d focused top_padding 0 
# bspc config -d focused top_monocle_padding 0
