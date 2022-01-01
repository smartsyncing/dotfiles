HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
NEWLINE=$'\n'

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' '+r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' original true
zstyle :compinstall filename '~/.zshrc'
stty stop undef
autoload -Uz compinit
compinit
bindkey -v
source ~/.zsh/zsh-plugins/zsh-autosuggestions.zsh
source ~/.zsh/zsh-plugins/zsh-syntax-highlighting.zsh
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
RPROMPT='%T'

export TERMINAL="kitty"
export EDITOR="vim"
alias ezsh="vim ~/.zshrc"
alias nf="neofetch"
alias ls="colorls"
alias upd="sudo pacman -Syu"
alias ins="sudo pacman -S"
alias rzsh="source ~/.zshrc"
alias cat="bat"
alias ga="git add"
alias gps="git push"
alias gpl="git pull"
alias gin="git init"
alias gcl="git clone"
alias grv="git remote -v"
alias gra="git remote add"
alias gs="git status"
alias gl="git log"
alias grebase="git rebase"
alias gmerge="git merge"

neofetch
colorscript -e zwaves
