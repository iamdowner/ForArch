#!/usr/bin/env bash

function run {
  if ! pgrep -f "$1" ;
  then
    $@&
  fi
}


run sleep 2

run setxkbmap -layout us,ru -option grp:alt_space_toggle

run xrandr --output HDMI-A-0 --mode 1680x1050

run picom

run flameshot

run nm-applet

run pasystray -g

feh --bg-max -z -r ~/Sync/валпаперс
