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
ln -sv $SCRIPTPATH/.zshrc ~/.zshrc
ln -sv $SCRIPTPATH/.vimrc ~/.vimrc

if [ ! -d ~/.oh-my-zsh ]
then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Ja existe"
fi
if [ ! -d ~/.vim/bundle ]
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
else
    echo "Ja existe"
fi

