<p align="center">
  <img src="https://raw.githubusercontent.com/smartsyncing/dotfiles/main/assets/dots.png" alt="Dotfiles"/>
</p>

<h2 align=center>🐧 One Dark - Openbox - Void</h2>

<p align="center">
  <img src="https://raw.githubusercontent.com/smartsyncing/dotfiles/main/assets/blank.png" alt="Dotfiles"/>
</p>
<p align="center">
  <img src="https://raw.githubusercontent.com/smartsyncing/dotfiles/main/assets/rofi.png" alt="Dotfiles"/>
</p>
<p align="center">
  <img src="https://raw.githubusercontent.com/smartsyncing/dotfiles/main/assets/openbox1.png" alt="Dotfiles"/>
</p>
<p align="center">
  <img src="https://raw.githubusercontent.com/smartsyncing/dotfiles/main/assets/openbox2.png" alt="Dotfiles"/>
</p>

# Details 
* <b>GTK Theme:</b> Qogir Dark
* <b>Icons:</b> Tela Dark
* <b> Font:</b> Iosevka Nerd Font
* <b>Terminal:</b> Kitty
* <b>Shell:</b> ZSH
* <b>Bar:</b> Polybar
* <b>Launcher:</b> Rofi
* <b>Editor:</b> Neovim
* <b>Browser:</b> Vivaldi
* <b>[Wallpaper](https://cdna.artstation.com/p/assets/images/images/009/538/556/4k/inaki-andonegi-castle-in-the-sky.jpg)</b>

# Dependencies

### ZSH 

* <b>[FZF](https://github.com/junegunn/fzf)</b>

* <b>[LSD](https://github.com/Peltoche/lsd)</b>

* <b>[Kitty](https://github.com/kovidgoyal/kitty)</b>

* <b>[ZSH](https://github.com/zsh-users/zsh)</b>

* <b>[Bat](https://github.com/sharkdp/bat)</b></b>

* <b>[ZSH Completions](https://github.com/zsh-users/zsh-completions)</b>

### Openbox

* <b>[Rofi](https://github.com/davatorium/rofi)</b>

* <b>[Polybar](https://github.com/polybar/polybar)</b>

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
