#!/usr/bin/env bash

SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

function dcfolder {
    if [ ! -L ~/.config/$1 ]
    then
        rm -r ~/.config/$1 
        ln -sv $SCRIPTPATH/$1 ~/.config/$1
    else
        echo "It already exists"
    fi
}

# Don't need to create folders just find the full path of things
# Folders to link to .config
dcfolder rofi
dcfolder sxhkd
dcfolder bspwm
dcfolder kitty
dcfolder polybar
ln -sv $SCRIPTPATH/Code/settings.json ~/.config/Code/User/settings.json