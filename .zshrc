zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
setopt beep extendedglob
unsetopt autocd nomatch notify
bindkey -v
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "%B%F{yellow}%b%f "
precmd() {
    vcs_info
}


HISTFILE=~/.histfile

HISTSIZE=1000

SAVEHIST=1000

setopt prompt_subst

NEWLINE=$'\n'

prompt='$NEWLINE%B%F{cyan}%~%f%b$NEWLINE${vcs_info_msg_0_}%F{green}%f%b  '

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias fetch="neofetch"
alias nf="neofetch"
alias ls="colorls -a"
alias upd="sudo pacman -Syu"
alias ins="sudo pacman -S"

neofetch
colorscript -e zwaves
bindkey -v
