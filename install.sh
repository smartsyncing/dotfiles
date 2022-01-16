#!/bin/bash

# Be sure to have dialog installed.

if [ -d ~/.config/*.old ]; then
  rm -rf ~/.config/*.old
fi

command_exists () {
    type "$1" &> /dev/null ;
}

install_deps(){
	printf "\n\033[33mInstalling needed dependencies\033[0m...\n \n"
	if [ $CHOICE = "1" ]; then
	    if command_exists yay ; then
	      yay -S --needed kitty wget unzip
	    elif command_exists paru ; then
              paru -S --needed kitty wget unzip
            elif command_exists dnf ; then
              sudo dnf install kitty wget unzip
            elif command_exists apt ; then
              sudo apt install kitty wget unzip
            elif command_exists zypper ; then
              sudo zypper install kitty wget unzip
            fi
	fi
        if [ $CHOICE = "2" ]; then            
            if command_exists yay ; then
              yay -S --needed vim bat zsh lsd fzf zsh-completions figlet inetutils
	    elif command_exists paru ; then
              paru -S --needed vim bat zsh lsd fzf zsh-completions figlet inetutils
            elif command_exists dnf ; then
              sudo dnf install vim bat zsh lsd fzf figlet
              sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/Fedora_33/shells:zsh-users:zsh-completions.repo
              sudo dnf install zsh-completions
            elif command_exists apt ; then
              sudo apt install zsh vim bat rust fzf figlet
              cargo install lsd
              echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-completions/xUbuntu_21.10/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-completions.list
	      curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/xUbuntu_21.10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-completions.gpg > /dev/null
	      sudo apt update
	      sudo apt install zsh-completions
            elif command_exists zypper ; then
              sudo zypper install vim zsh bat rust fzf figlet
              cargo install lsd
              zypper addrepo https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/openSUSE_Tumbleweed/shells:zsh-users:zsh-completions.repo
              zypper refresh
              zypper install zsh-completions
            fi
        fi
        if [ $CHOICE = "3" ]; then
            if command_exists yay ; then
              yay -S --needed neofetch
            elif command_exists paru ; then
              paru -S --needed neofetch
            elif command_exists dnf ; then
              sudo dnf install neofetch
            elif command_exists apt ; then
              sudo apt install neofetch
            elif command_exists zypper ; then
              sudo zypper install neofetch
            fi
        fi
	if [ $CHOICE = "4" ]; then
            if command_exists yay ; then
              git clone https://github.com/dpayne/cli-visualizer && cd cli-visualizer
              ./install.sh
            elif command_exists paru ; then
              git clone https://github.com/dpayne/cli-visualizer && cd cli-visualizer
              ./install.sh
            elif command_exists dnf ; then
              git clone https://github.com/dpayne/cli-visualizer && cd cli-visualizer
              ./install.sh
            elif command_exists apt ; then
              git clone https://github.com/dpayne/cli-visualizer && cd cli-visualizer
              ./install.sh
            elif command_exists zypper ; then
              git clone https://github.com/dpayne/cli-visualizer && cd cli-visualizer
              ./install.sh
            fi
        fi
        if [ $CHOICE = "5" ]; then
            if command_exists yay ; then
	      yay -S --needed vim bat zsh kitty cli-visualizer lsd neofetch fzf zsh-completions figlet inetutils unzip
            elif command_exists paru ; then
              paru -S --needed vim bat zsh kitty cli-visualizer lsd neofetch fzf zsh-completions figlet inetutils unzip
            elif command_exists dnf ; then
              sudo dnf install vim bat zsh kitty lsd neofetch fzf figlet unzip
              git clone https://github.com/dpayne/cli-visualizer && cd cli-visualizer
              ./install.sh
              sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/Fedora_33/shells:zsh-users:zsh-completions.repo
              sudo dnf install zsh-completions
            elif command_exists apt ; then
	      sudo apt install zsh vim bat rust neofetch fzf kitty figlet unzip
	      cargo install lsd
	      git clone https://github.com/dpayne/cli-visualizer && cd cli-visualizer
              ./install.sh
	      echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-completions/xUbuntu_21.10/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-completions.list
	      curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/xUbuntu_21.10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-completions.gpg > /dev/null
	      sudo apt update
	      sudo apt install zsh-completions
            elif command_exists zypper ; then
              sudo zypper install vim zsh bat kitty rust neofetch fzf figlet unzip 
              cargo install lsd
              git clone https://github.com/dpayne/cli-visualizer && cd cli-visualizer
              ./install.sh
              zypper addrepo https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/openSUSE_Tumbleweed/shells:zsh-users:zsh-completions.repo
              zypper refresh
              zypper install zsh-completions
            fi
        fi
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
        sudo mv Iosevka.zip /usr/share/fonts
        cd /usr/share/fonts
        sudo unzip Iosevka.zip
        sudo fc-cache -f
}

echo 'aspect = 0
separate_widget = ""
tab_len = 0
visit_items = OFF
use_shadow = OFF
use_colors = OFF
screen_color = (WHITE,DEFAULT,OFF)
shadow_color = (WHITE,WHITE,OFF)
dialog_color = (WHITE,BLACK,OFF)
title_color = (GREEN,BLACK,OFF)
border_color = (WHITE,BLACK,OFF)
button_active_color = (BLACK,YELLOW,OFF)
button_inactive_color = (WHITE,BLACK,OFF)
button_key_active_color = (BLACK,GREEN,OFF)
button_key_inactive_color = (RED,BLACK,OFF)
button_label_active_color = (BLACK,YELLOW,OFF)
button_label_inactive_color = (WHITE,BLACK,OFF)
inputbox_color = (WHITE,BLACK,OFF)
inputbox_border_color = (BLACK,BLACK,OFF)
searchbox_color = (WHITE,BLACK,OFF)
searchbox_title_color = (GREEN,BLACK,OFF)
searchbox_border_color = (WHITE,BLACK,OFF)
position_indicator_color = (GREEN,BLACK,OFF)
menubox_color = (BLACK,BLACK,OFF)
menubox_border_color = (BLACK,BLACK,OFF)
item_color = (WHITE,BLACK,OFF)
item_selected_color = (BLACK,GREEN,OFF)
tag_color = (BLUE,BLACK,OFF)
tag_selected_color = (BLACK,GREEN,OFF)
tag_key_color = (YELLOW,BLACK,OFF)
tag_key_selected_color = (BLACK,GREEN,OFF)
check_color = (WHITE,BLACK,OFF)
check_selected_color = (BLACK,GREEN,OFF)
uarrow_color = (GREEN,BLACK,OFF)
darrow_color = (GREEN,BLACK,OFF)
itemhelp_color = (BLACK,WHITE,OFF)
form_active_text_color = (BLACK,BLUE,OFF)
form_text_color = (WHITE,BLACK,OFF)
form_item_readonly_color = (BLACK,WHITE,OFF)
' >> ~/.dialogrc
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Dotfiles"
TITLE="What do you want to install?"
MENU="Choose one of the following options:"

OPTIONS=(1 "Kitty"
         2 "ZSH"
         3 "Neofetch"
         4 "CLI-Visualiser"
	 5 "All")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
	    install_deps
            wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
	    if [ -d ~/.local/share/fonts ]; then
 	      rm -rf ~/.local/share/fonts
              mkdir ~/.local/share/fonts
	    else
	      mkdir ~/.local/share/fonts
	    fi
	    mv Iosevka.zip ~/.local/share/fonts
	    cd ~/.local/share/fonts
	    unzip Iosevka.zip
	    sudo fc-cache -fv
            printf "\n\033[33mCloning the repo...\033[0m\n \n"
            if [ -d ~/.config/kitty ]; then
              printf "\033[33mExisting Kitty config detected! Backing up...\033[0m\n"
              mv ~/.config/kitty ~/.config/kitty.old
            fi
	    if [ -d ~/dotfiles ]; then
	      cd ~/dotfiles
	      printf " \n\033[33mMoving files...\033[0m\n \n"
              mv -f kitty ~/.config
	    else
	      printf "\n\033[33mCloning the repo...\033[0m\n \n"
	      git clone https://github.com/smartsyncing/dotfiles && cd dotfiles
	      printf " \n\033[33mMoving files...\033[0m\n \n"
	      mv -f kitty ~/.config
	    fi
            ;;
        2)	
	    install_deps
	    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
	    if [ -d ~/.local/share/fonts ]; then
 	      rm -rf ~/.local/share/fonts
              mkdir ~/.local/share/fonts
	    else
	      mkdir ~/.local/share/fonts
	    fi
	    mv Iosevka.zip ~/.local/share/fonts
	    cd ~/.local/share/fonts
	    unzip Iosevka.zip
	    sudo fc-cache -fv
            if [ -d ~/.config/lsd ]; then
              rm -rf ~/.config/lsd
              mkdir ~/.config/lsd
	    else
	      mkdir ~/.config/lsd
            fi
	    touch ~/.config/lsd/config.yaml
            echo '  icons:
   when: auto
   theme: fancy
   separator: "  "
            ' >> ~/.config/lsd/config.yaml		
	    chsh -s /usr/bin/zsh
	    printf "\n\033[33mCloning the repo...\033[0m\n \n"
	    if [ -d ~/.config/zsh ]; then
	      printf "\n\033[33mExisting ZSH config detected! Backing up...\033[0m\n "
	      mv ~/.config/zsh ~/.config/zsh.old && mv ~/.zshrc ~/.zshrc.backup
	    fi
	    if command -v 'uninstall_oh_my_zsh' >'/dev/null' 2>&1; then
	      printf "\033[33mExisting ZSH config detected! Removing...\033[0m\n" 
	      uninstall_oh_my_zsh
	    fi
	    if [ -d ~/.zshrc ]; then
	      printf "\033[33mExisting ZSH config detected! Backing up...\033[0m\n" 
	      mv ~/.zshrc ~/.zshrc.backup
	    fi
	    if [ -d ~/dotfiles ]; then
	      cd ~/dotfiles
	      printf " \n\033[33mMoving files...\033[0m\n \n"
              mv -f zsh ~/.config
              mv -f .zshrc ~/
	    else
	      printf "\n\033[33mCloning the repo...\033[0m\n \n"
	      git clone https://github.com/smartsyncing/dotfiles && cd dotfiles
	      printf " \n\033[33mMoving files...\033[0m\n \n"
	      mv -f zsh ~/.config
	      mv -f .zshrc ~/
	    fi
            ;;
        3)
	    install_deps            
            printf "\n\033[33mCloning the repo...\033[0m\n \n"
            if [ -d ~/.config/neofetch ]; then
              printf "\033[33mExisting Neofetch config detected! Backing up...\033[0m\n"
              mv ~/.config/neofetch ~/.config/neofetch.old
            fi
	    if [ -d ~/dotfiles ]; then
	      cd ~/dotfiles
	      printf " \n\033[33mMoving files...\033[0m\n \n"
              mv -f neofetch ~/.config
	    else
	      printf "\n\033[33mCloning the repo...\033[0m\n \n"
	      git clone https://github.com/smartsyncing/dotfiles && cd dotfiles
	      printf " \n\033[33mMoving files...\033[0m\n \n"
	      mv -f neofetch ~/.config
	    fi
            ;;
        4)   
	    install_deps            
            if [ -d ~/.config/vis ]; then
              printf "\033[33mExisting Vis config detected! Backing up...\033[0m\n"
              mv ~/.config/vis ~/.config/vis.old
            fi
	    if [ -d ~/dotfiles ]; then
	      cd ~/dotfiles
	      printf " \n\033[33mMoving files...\033[0m\n \n"
              mv -f vis ~/.config
	    else
              printf "\n\033[33mCloning the repo...\033[0m\n \n"
	      git clone https://github.com/smartsyncing/dotfiles && cd dotfiles
	      printf " \n\033[33mMoving files...\033[0m\n \n"
	      mv -f vis ~/.config
	    fi
            ;;
	5)
	    if [ -d ~/.config/lsd ]; then
	      rm -rf ~/.config/lsd
	      mkdir ~/.config/lsd
	    else
	      mkdir ~/.config/lsd
            fi
	    touch ~/.config/lsd/config.yaml
	    echo 'icons:
   when: auto
   theme: fancy
   separator: "  "
            ' >> ~/.config/lsd/config.yaml
	    chsh -s /usr/bin/zsh
	    printf "\n\033[33mCloning the repo...\033[0m\n \n"
	    if [ -d ~/.config/kitty ]; then
	      printf "\033[33mExisting Kitty config detected! Backing up...\033[0m"
	      mv ~/.config/kitty ~/.config/kitty.old
	    fi
	    if [ -d ~/.config/zsh ]; then
	      printf "\n\033[33mExisting ZSH config detected! Backing up...\033[0m\n "
	      mv ~/.config/zsh ~/.config/zsh.old && mv ~/.zshrc ~/.zshrc.backup
	    fi
	    if command -v 'uninstall_oh_my_zsh' >'/dev/null' 2>&1; then
	      printf "\033[33mExisting ZSH config detected! Removing...\033[0m\n" 
	      uninstall_oh_my_zsh
	    fi
	    if [ -d ~/.zshrc ]; then
	      printf "\033[33mExisting ZSH config detected! Backing up...\033[0m\n" 
	      mv ~/.zshrc ~/.zshrc.backup
	    fi
	    if [ -d ~/.config/neofetch ]; then
	      printf "\033[33mExisting Neofetch config detected! Backing up...\033[0m\n"
	      mv ~/.config/neofetch ~/.config/neofetch.old
	    fi
	    if [ -d ~/.config/vis ]; then
	      printf "\033[33mExisting Vis config detected! Backing up...\033[0m\n"
	      mv ~/.config/vis ~/.config/vis.old
	    fi
	    if [ -d ~/dotfiles ]; then
              cd ~/dotfiles
	      printf " \n\033[33mMoving files...\033[0m\n \n"
              mv -f zsh ~/.config
              mv -f .zshrc ~/
              mv -f vis ~/.config
              mv -f neofetch ~/.config
              mv -f kitty ~/.config
	    else
	      printf "\n\033[33mCloning the repo...\033[0m\n \n"
	      git clone https://github.com/smartsyncing/dotfiles && cd dotfiles
	      printf " \n\033[33mMoving files...\033[0m\n \n"
	      mv -f zsh ~/.config
              mv -f .zshrc ~/
	      mv -f vis ~/.config
	      mv -f neofetch ~/.config
	      mv -f kitty ~/.config
	    fi
            ;;
esac
cd .. 
rm -rf dotfiles/
echo "Finished installing."
