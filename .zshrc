HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
NEWLINE=$'\n'
autoload -Uz compinit

zstyle :compinstall filename '~/.zshrc'
stty stop undef
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

export TERMINAL="kitty"
export EDITOR="vim"
alias fetch="neofetch"
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
alias ghelp="echo -n 'Git shortcuts:
gm    - git commit (optional message)
gma   - git commit -a
example: gma add new color options
output:  git commit -am \"Add new color options\"
example: gm add stuff ,, origin main
output:  git commit -m \"Add stuff\" && git push origin main

ga    - git add

gps   - git push

gpl   - git pull

gin   - git init

gcl   - git clone

gra   - git remote add

grv   - git remote -v

gs    - git status

gl    - git log

grebase  -  git rebase

gmerge   -  git merge

ghelp - show this help message
'"

neofetch
colorscript -e zwaves
