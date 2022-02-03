#               __          
#      ___ ___ / /  ________
#   _ /_ /(_-</ _ \/ __/ __/
#  (_)/__/___/_//_/_/  \__/ 
#
                      
HISTFILE=~/.config/zsh/zsh_history
HISTSIZE=50000
SAVEHIST=50000

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' '+r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' original true
zstyle ':completion:*' menu select

zstyle :compinstall filename '~/.config/zsh/.zshrc'

stty stop undef

bindkey -v
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "$terminfo[kcuu1]" up-line-or-beginning-search
bindkey "$terminfo[kcud1]" down-line-or-beginning-search
bindkey -M vicmd 'k' up-line-or-beginning-search
bindkey -M vicmd 'j' down-line-or-beginning-search
bindkey '^P' autosuggest-accept
bindkey ' ' magic-space        
autoload -Uz compinit

source ~/.config/zsh/zsh-plugins/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-plugins/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-plugins/you-should-use.plugin.zsh
source ~/.config/zsh/zsh-functions/addalias 
source ~/.config/zsh/zsh-functions/autols
source ~/.config/zsh/zsh-functions/ezsh
source ~/.config/zsh/zsh-functions/helpme
source ~/.config/zsh/zsh-functions/rzsh
source ~/.config/zsh/zsh-exports-and-aliases
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

prompt='%B%F{$PCOLOR}%2~${vcs_info_msg_0_}%f »  %b'
RPROMPT='%T'
	
source ~/.config/zsh/autostart
source ~/.config/zsh/zsh-plugins/fzf-tab/fzf-tab.plugin.zsh
