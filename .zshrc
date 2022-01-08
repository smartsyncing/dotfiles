# My custom zsh config
# Zsh-completions is recommended.

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' '+r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' original true
zstyle ':completion:*' menu select

zstyle :compinstall filename '~/.zshrc'

stty stop undef

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "$terminfo[kcuu1]" up-line-or-beginning-search
bindkey "$terminfo[kcud1]" down-line-or-beginning-search
bindkey -M vicmd 'k' up-line-or-beginning-search
bindkey -M vicmd 'j' down-line-or-beginning-search
bindkey '^P' autosuggest-accept
autoload -Uz compinit

bindkey -v
source ~/.config/.zsh/zsh-plugins/zsh-autosuggestions.zsh
source ~/.config/.zsh/zsh-plugins/zsh-syntax-highlighting.zsh
source ~/.config/.zsh/zsh-functions/autols

[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh
[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f $ZDOTDIR/completion/_fnm ] && fpath+="$ZDOTDIR/completion/"
compinit

setopt extendedglob autocd interactive_comments prompt_subst
unsetopt nomatch notify beep
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn	
zstyle ':vcs_info:git*' formats "%B on %F{magenta} %b%u%f"
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' check-for-changes true

precmd() {
    vcs_info
}

prompt='%B%F{12}%2~${vcs_info_msg_0_}%f »  %b'
RPROMPT='%T'

export FZF_DEFAULT_OPTS='--layout=reverse --height=40% --border --info=inline --padding=1'
export FZF_CTRL_T_OPTS="--preview 'file {}' --preview-window up,1,border"
export FZF_ALT_C_OPTS="--preview 'file {}' --preview-window up,1,border"
alias ezsh="vim ~/.zshrc"
alias lc="colorls"
alias update="sudo pacman -Syu"
alias install="sudo pacman -S"
alias rzsh="source ~/.zshrc"
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

source ~/.config/.zsh/zsh-plugins/fzf-tab/fzf-tab.plugin.zsh
