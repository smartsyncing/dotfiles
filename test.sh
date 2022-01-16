Package_Install() {
    PACKAGES=("$1")
    case $PACKAGE_MANAGER in
        yay)
            yay -S --needed $PACKAGES 
        ;;
        paru)
            paru -S --needed PACKAGES
        ;;
        dnf)
            sudo dnf install $PACKAGES
        ;;
        apt)
            sudo apt install $PACKAGES
        ;;
        zypper)
            sudo zypper install $PACKAGES
        ;;
}

case $CHOICE in
        1)
            printf "\n\033[33mInstalling needed dependencies\033[0m...\n \n"
            Package_Install "kitty wget unzip"
        ;;
