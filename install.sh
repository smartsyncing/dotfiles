#!/bin/bash

printf "This script requires the following dependencies to run:\n\n ZSH\n FZF\n LSD\n Kitty\n Zsh\n Bat\n ZSH Completions\n Openbox\n Rofi\n Polybar\n Dunst\n Picom\n\n"

read -r -p "Are you sure you would like to proceed? [y/n]: " response

if [[ "$response" = "y"* ]] || [[ "$response" = "Y"* ]]
then
   curl -s -S -O https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip     
   unzip Iosevka.zip
   sudo mv Iosevka* /usr/share/fonts
   git clone https://github.com/smartsyncing/dotfiles && cd dotfiles
   mv * ~/.config
   mv ~/.config/.zshrc ~/ && mv ~/.config/.gtkrc-2.0 ~/
   cd .. && rm -rf dotfiles
   source ~/.zshrc
   openbox --reconfigure
else
   echo "Script aborted."
   exit
fi

