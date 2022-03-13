#               __          
#      ___ ___ / /  ________
#   _ /_ /(_-</ _ \/ __/ __/
#  (_)/__/___/_//_/_/  \__/ 
#

                     
#  History
HISTFILE=~/.config/zsh/zsh_history
HISTSIZE=50000
SAVEHIST=50000

#  Completions
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' '+r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' original true
zstyle ':completion:*' menu select

zstyle :compinstall filename '~/.config/zsh/.zshrc'

#  Lazy loading of functions
fpath=(~/.config/zsh/zsh-plugins/zsh-completions/src $fpath)
fpath=($fpath ~/.config/zsh/zsh-functions)
autoload -Uz fzf-git
autoload -Uz gitprompt	
autoload -Uz ptime
autoload -Uz addalias
autoload -Uz addplugin
autoload -Uz ezsh
autoload -Uz helpme
autoload -Uz autols

#  Shell options
stty stop undef
bindkey -v
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey -s '^o' 'ranger^M'
bindkey -s '^v' 'vis^M'
bindkey "$terminfo[kcuu1]" up-line-or-beginning-search
bindkey "$terminfo[kcud1]" down-line-or-beginning-search
bindkey -M vicmd 'k' up-line-or-beginning-search
bindkey -M vicmd 'j' down-line-or-beginning-search
bindkey '^P' autosuggest-accept
bindkey ' ' magic-space        
bindkey '^[[A' history-substring-search-up   
bindkey '^[[B' history-substring-search-down   
autoload -Uz compinit

#  Sourcing files
source ~/.config/zsh/zsh-plugins/you-should-use.zsh
source ~/.config/zsh/zsh-plugins/zsh-history-substring-search.zsh
source ~/.config/zsh/zsh-plugins/manydots-magic
source ~/.config/zsh/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.config/zsh/zsh-plugins/zsh-autopair/autopair.zsh
source ~/.config/zsh/zsh-exports-and-aliases
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh
[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

setopt extendedglob autocd interactive_comments prompt_subst histignoredups cdablevars histreduceblanks append_history share_history extendedhistory inc_append_history hist_reduce_blanks no_case_glob
unsetopt nomatch notify beep

source ~/.config/zsh/zsh-plugins/fzf-tab/fzf-tab.plugin.zsh
source ~/.config/zsh/zsh-functions/fetch
source ~/.config/zsh/zsh-functions/ttyfriendlyprompt

fzf-git
gitprompt
autols
