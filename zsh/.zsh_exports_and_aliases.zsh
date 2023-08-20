#                           __    
#   _____ __ ___  ___  ____/ /____
#  / -_) \ // _ \/ _ \/ __/ __(_-<
#  \__/_\_\/ .__/\___/_/  \__/___/
#         /_/                     
#                 __
#   ___ ____  ___/ /
#  / _ `/ _ \/ _  / 
#  \_,_/_//_/\_,_/            
#  
#         ___                
#   ___ _/ (_)__ ____ ___ ___
#  / _ `/ / / _ `(_-</ -_|_-<
#  \_,_/_/_/\_,_/___/\__/___/
#                         

# Sudo or doas

if command -v doas &> /dev/null; then
  alias sudo="doas"
fi


#  FZF

export FZF_DEFAULT_COMMAND='rg --files --hidden --glob '"'"'!.git/'"'"

export FZF_DEFAULT_OPTS='
--layout=default
--padding=3
--border
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:-1,hl+:#d858fe
--color=info:#98c379,prompt:#98c379,pointer:#e5c07b,marker:#e5c07b,spinner:#61afef,header:#61afef,gutter:-1
--prompt="› "
--pointer="▶"
--marker="▶"'

export FZF_CTRL_T_OPTS="--preview 'file {}' --preview-window up,2,noborder"

export FZF_ALT_C_OPTS="--preview 'file {}' --preview-window up,2,noborder"



#  Package managers


# XBPS

alias xu="sudo xbps-install -Syu"

alias xi="sudo xbps-install -S"

alias xr="sudo xbps-remove -o"


# AUR/Pacman

if command -v paru &> /dev/null; then
  prefix="paru"
elif command -v yay &> /dev/null; then
  prefix="yay"
else
  prefix="sudo pacman"
fi

alias pu="$prefix -Syu"

alias pi="$prefix -S"

alias pr="$prefix -Runs"

alias pss="pacman -Slq | fzf --preview 'pacman -Si {}'"


# Apt

alias au="sudo apt-get update && sudo apt-get upgrade"

alias ai="sudo apt-get install"

alias ar="sudo apt-get remove"


# Dnf

alias du="sudo dnf update -y"

alias di="sudo dnf install -y"

alias dr="sudo dnf remove"


#  Git aliases


alias g="git"

alias gi="git init"

alias gs="git status -sbu"

alias gco="git checkout"

alias gcob="git checkout -b"

alias gp="git push"

alias gm="git merge"

alias ga="git add ."

alias gcm="git commit -m"

alias gpl="git pull"

alias gst="git stash"

alias gstl="git stash list"

alias glg='git log --graph --oneline --decorate --all'

alias gcl="git clone"

alias gclr="git clone --recursive"



#  Other


alias ls="exa -lhx --group-directories-first --icons"

alias ex="chmod +x"

alias c="clear"

alias x="exit"

alias h="history -30"

alias hc="echo -n > ~/.config/zsh/zsh_history"

alias hg="history | fc -ln 0 | sed 's/^/  /' | grep"

alias ag="alias | sed 's/^/  /' | grep"

alias nv="nvim"

alias nvrc="nvim ~/.config/nvim/nvimrc"

alias grep="grep -n --color" 

alias mkdir="mkdir -pv" 

alias ping="ping -c 5"

alias rm="rm -Rv"

alias mv="mv -v"

alias ln="ln -sv"

alias cp="cp -Rv"

alias expand="expand -t 4"

alias sl="xdg-open https://www.youtube.com/watch?v=dQw4w9WgXcQ"

export ZSH_AUTOSUGGEST_USE_ASYNC=1       

export ZSH_AUTOSUGGEST_MANUAL_REBIND=1

export GPG_TTY=$(tty) 

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

export user=$(whoami)

export SUDO_PROMPT="password for $user: "

alias termcol='for i in {0..255}; do printf "\x1b[38;5;${i}mcolor${i}\n"; done'

alias ':q'="exit"

alias gerp='grep'

alias grep-i='grep -i'

alias grepi='grep -i'

alias maek='make'

alias mkdirp='mkdir -p'

alias mkdir-p='mkdir -p'

alias psax='ps ax'

alias pswax='ps wax'

alias psxa='ps ax'

alias raek='rake'

alias tartvf='tar tvf'

alias tartvzf='tar tvzf'

alias tarxvf='tar xvf'

alias tarxvzf='tar xvzf'

alias zz='exit'

export YSU_MESSAGE_FORMAT="you can also run$(tput setaf 2) %alias$(tput sgr0)"
