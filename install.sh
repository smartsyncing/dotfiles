#!/bin/bash

printf "
This script requires the following dependencies to run, be sure to have these installed:

ZSH
FZF
Exa
Kitty
Openbox
Tint2
Dunst
Picom

"

shopt -s nocasematch
read -r -p "Are you sure you would like to proceed? [y/n]: " response

if [[ "$response" = "y"* ]] 
then
   curl -sSL https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip && unzip Iosevka* && sudo mv Iosevka* /usr/share/fonts
   git clone --recursive https://github.com/smartsyncing/dotfiles && cd dotfiles
   mv * ~/.config
   mv ~/.config/.zshrc ~/ && mv ~/.config/.gtkrc-2.0 ~/
   cd .. && rm -rf dotfiles
   source ~/.zshrc
   openbox --reconfigure
else
   echo "Script aborted."
   exit
fi

