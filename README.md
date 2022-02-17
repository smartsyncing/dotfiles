# Dotfiles


### 🐧 One Dark - Openbox - Void

<p align="center">
  <img src="https://raw.githubusercontent.com/smartsyncing/dotfiles/main/assets/wt90urz8s6i81.png" alt="Dotfiles"/>
</p>

<img src="https://badges.pufler.dev/visits/smartsyncing/dotfiles?style=for-the-badge&color=282c34&labelColor=c678dd"/>

# Details 
* <b>GTK Theme:</b> Qogir Dark
* <b>Icons:</b> Tela Dark
* <b> Font:</b> Iosevka Nerd Font
* <b>Terminal:</b> Kitty
* <b>Shell:</b> ZSH
* <b>Bar:</b> tint2
* <b>Launcher:</b> FZF
* <b>Editor:</b> Neovim
* <b>Browser:</b> Vivaldi
* <b>[Wallpaper](https://cdna.artstation.com/p/assets/images/images/009/538/556/4k/inaki-andonegi-castle-in-the-sky.jpg)</b>

# Dependencies

### ZSH 

* <b>[FZF](https://github.com/junegunn/fzf)</b>

* <b>[LSD](https://github.com/Peltoche/lsd)</b>

* <b>[Ripgrep](https://github.com/BurntSushi/ripgrep)</b></b>

* <b>[Nerd Fonts](https://nerdfonts.com)</b>






### Openbox

* <b>[FZF](https://github.com/junegunn/fzf)</b>

* <b>[tint2](https://github.com/o9000/tint2)</b>

* <b>[Dunst](https://github.com/dunst-project/dunst)</b>

* <b>[Picom](https://github.com/ibhagwan/picom)</b>

# Installation

```
git clone --recursive https://github.com/smartsyncing/dotfiles
cd dotfiles
mv * ~/.config &&
mv ~/.config/.gtkrc-2.0 ~/
mv ~/.config/.zshrc ~/
openbox --reconfigure
source ~/.zshrc
```
