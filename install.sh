#!/bin/bash
zshrc_file=$HOME/.zshrc
zsh_dir=$HOME/.config/zsh
neofetch_dir=$HOME/.config/neofetch
kitty_dir=$HOME/.config/kitty
vis_dir=$HOME/.config/vis

if [ -d "$zsh_dir" ]; then
  printf "\n\033[33mExisting ZSH config detected! Replacing...\033[0m\n "
  rm -rf ~/.config/zsh && rm -rf ~/.zshrc 
fi
if command -v 'uninstall_oh_my_zsh' >'/dev/null' 2>&1; then
  printf "\033[33mExisting ZSH config detected! Replacing...\033[0m\n" 
  uninstall_oh_my_zsh
fi
if [ -d "$zshrc_file" ]; then
  printf "\033[33mExisting ZSH config detected! Replacing...\033[0m\n" 
  rm -rf ~/.zshrc
fi
if [ -d "$kitty_dir" ]; then
  printf "\033[33mExisting Kitty config detected! Replacing...\033[0m\n"
  rm -rf ~/.config/kitty
fi
if [ -d "$vis_dir" ]; then
  printf "\033[33mExisting Vis config detected! Replacing...\033[0m\n"
  rm -rf ~/.config/vis
fi
if [ -d "$neofetch_dir" ]; then
  printf "\033[33mExisting Neofetch config detected! Replacing...\033[0m\n"
  rm -rf ~/.config/neofetch
fi

printf "\n\033[33mInstalling needed dependencies\033[0m...\n \n"

if command -v 'yay' >'/dev/null' 2>&1; then
  yay -S --needed vim bat ttf-fira-code zsh kitty cli-visualizer lsd neofetch fzf zsh-completions
elif command -v 'paru' >'/dev/null' 2>&1; then
  paru -S --needed vim bat ttf-fira-code zsh kitty cli-visualizer lsd neofetch fzf zsh-completions
elif command -v 'dnf' >'/dev/null' 2>&1; then
  sudo dnf install vim bat zsh fira-code-fonts kitty lsd neofetch fzf
  git clone https://github.com/dpayne/cli-visualizer && cd cli-visualizer
  ./install.sh
  sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/Fedora_33/shells:zsh-users:zsh-completions.repo
  sudo dnf install zsh-completions
elif command -v 'apt' >'/dev/null' 2>&1; then
  sudo apt install zsh vim bat rust neofetch fzf kitty 
  cargo install lsd
  git clone https://github.com/dpayne/cli-visualizer && cd cli-visualizer
  ./install.sh
  sudo add-apt-repository universe
  sudo apt install fonts-firacode
  echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-completions/xUbuntu_21.10/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-completions.list
  curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/xUbuntu_21.10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-completions.gpg > /dev/null
  sudo apt update
  sudo apt install zsh-completions
elif command -v 'zypper' >'/dev/null' 2>&1; then
  sudo zypper install vim zsh bat kitty rust neofetch fzf 
  cargo install lsd 
  git clone https://github.com/dpayne/cli-visualizer && cd cli-visualizer
  ./install.sh
  zypper addrepo https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/openSUSE_Tumbleweed/shells:zsh-users:zsh-completions.repo
  zypper refresh
  zypper install zsh-completions
fi

chsh -s /usr/bin/zsh
printf "\n\033[33mCloning the repo...\033[0m\n \n"
git clone https://github.com/smartsyncing/dotfiles && cd dotfiles
printf "\n\033[33mMoving files...\033[0m\n \n"
mv -f zsh ~/.config/zsh
mv -f .zshrc ~/
mv -f vis ~/.config
mv -f neofetch ~/.config
mv -f kitty ~/.config
cd .. 
rm -rf dotfiles/
echo "Finished installing."
