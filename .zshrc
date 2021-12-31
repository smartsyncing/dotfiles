HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
NEWLINE=$'\n'
autoload -Uz compinit

zstyle :compinstall filename '~/.zshrc'
stty stop undef
compinit
bindkey -v
source ~/.zsh/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-functions/autols

setopt extendedglob autocd interactive_comments prompt_subst
unsetopt nomatch notify beep
bindkey -v
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "%B on %F{magenta} %b%f "

precmd() {
    vcs_info
}

prompt='$NEWLINE%B%F{cyan}%~%f${vcs_info_msg_0_}%b$NEWLINE%F{green}%f%b  '

export TERMINAL="kitty"
export EDITOR="vim"
alias fetch="neofetch"
alias nf="neofetch"
alias ls="colorls"
alias upd="sudo pacman -Syu"
alias ins="sudo pacman -S"
alias rzsh="source ~/.zshrc"
alias cat="bat"

neofetch
colorscript -e zwaves
