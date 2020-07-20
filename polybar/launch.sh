#!/usr/bin/env zsh
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [[ $(xrandr --query | grep 'HDMI-0') != *disconnected* ]]; then
    polybar --reload HDMI0 &
    polybar --reload eDPI1 &
else
    polybar --reload eDPI1tray &
fi

echo "Polybar launched"