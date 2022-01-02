<p align="center">
  <img src="https://raw.githubusercontent.com/smartersyncing/dotfiles/main/assets/dots.png" alt="Dotfiles"/>
</p>

<h2 align=center>🐧 One Dark - Budgie - Arch</h2>

<p align="center">
  <img src="https://raw.githubusercontent.com/smartersyncing/dotfiles/main/assets/setup.PNG" alt="Dotfiles"/>
</p>
<p align="center">
  <img src="https://raw.githubusercontent.com/smartersyncing/dotfiles/main/assets/raven.png" alt="Dotfiles"/>
</p>

## Prerequisites
* [ColorLS](https://github.com/ksxrubyapps/colorls) - (optional for zsh)

* [Neofetch](https://github.com/dylanaraps/neofetch)

* [Kitty](https://github.com/kovidgoyal/kitty) 

* [Vis](https://github.com/dpayne/cli-visualizer)

* [Zsh](https://github.com/zsh-users/zsh) 

* [Mutter Rounded](https://github.com/yilozt/mutter-rounded)

* [Fira Code](https://github.com/tonsky/FiraCode)

* [Bat](https://github.com/sharkdp/bat)  - (optional for zsh)

* [Colorscripts](https://gitlab.com/dwt1/shell-color-scripts)

* [ZSH Completions](https://github.com/zsh-users/zsh-completions) - (for zsh)

## Installation

### Dependencies
```
yay -S --needed vim bat ttf-fira-code mutter-rounded zsh kitty cli-visualizer ruby-colorls neofetch
```

### Cloning the repo
```
git clone https://github.com/smartsyncing/dotfiles.git && cd dotfiles
```

### Moving the files 
```
mv -f .zsh ~/.config
mv -f zshenv /etc/zsh/
mv -f vis ~/.config
mv -f neofetch ~/.config
mv -f kitty ~/.config
rm -rf ~/dotfiles
```
