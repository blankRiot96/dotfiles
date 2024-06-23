#!/bin/bash

state=$1

if [ "$state" == "on" ]; then
  hyprctl keyword monitor "eDP-1,1920x1200,0x0,1"
else
  count_monitors=$(hyprctl monitors | grep -c '^Monitor')
  hyprctl keyword monitor "eDP-1, disable"
  # in order for this to work gotta have 'HandleLidSwitch=ignore' set in
  # /etc/systemd/logind.conf
  [ "$count_monitors" = 1 ] && systemctl suspend
fi
