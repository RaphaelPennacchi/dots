#!/bin/zsh

externalMonitor=$(xrandr --query | grep 'HDMI-0')
if [[ $externalMonitor != *disconnected* ]]; then
    ./.screenlayout/dual.sh
    bspc monitor HDMI-0 -d I II III IV V 
    bspc monitor eDP-1-1 -d VI VII VIII IX X
else
    bspc monitor eDP-1-1 -d I II III IV V VI VII VIII IX X
fi
