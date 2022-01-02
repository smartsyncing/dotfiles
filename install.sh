#!/usr/bin/env bash

rm -rf ~/.config/.zsh
rm -rf ~/.zshrc
git clone https://github.com/smartsyncing/dotfiles/ &&
cd dotfiles &&
mv .zsh ~/.config &&
mv .zshrc ~/ 

git clone git://github.com/zsh-users/zsh-completions.git &&
mv zsh-completions ~/.config/.zsh/ &&
echo "fpath=(~/.config/.zsh/zsh-completions/src $fpath)" >> ~/.zshrc &&
rm -f ~/.zcompdump; compinit

