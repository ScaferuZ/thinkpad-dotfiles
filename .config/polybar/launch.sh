#!/usr/bin/env bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main &

if [[ $(xrandr -q | grep 'HDMI2 connected') ]]; then
  polybar main_external &
fi
