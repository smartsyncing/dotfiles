#!/usr/bin/env bash

rm -rf ~/.config/.zsh &&
rm -rf ~/.zshrc &&
git clone https://github.com/smartsyncing/dotfiles/ &&
cd dotfiles &&
mv .zsh ~/.config &&
mv .zshrc ~/ 
