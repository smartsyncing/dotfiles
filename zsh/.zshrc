
#                   o     |
#   __,   _  _  _|_     __|   __ _|_  _
#  /  |  / |/ |  |  |  /  |  /  \_|  |/
#  \_/|_/  |  |_/|_/|_/\_/|_/\__/ |_/|__/
#  zsh
#

if [ -f ${ZDOTDIR:-~}/.antidote/antidote.zsh ]; then
	source ${ZDOTDIR:-~}/.antidote/antidote.zsh
else
	rm -rf ${ZDOTDIR:-~}/.antidote
	git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
fi


#   _ _ ._ _ ._ | __|_o _ ._  _
#  (_(_)| | ||_)|(/_|_|(_)| |_>
#            |

source ${ZDOTDIR:-~}/.zsh_completions.zsh

autoload -Uz compinit

if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;


#  ._ |    _ o._  _
#  |_)||_|(_||| |_>
#  |       _|

zsh_plugins=${ZDOTDIR:-$HOME}/.zsh_plugins

if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  (
    source ${ZDOTDIR:-~}/.antidote/antidote.zsh
    antidote bundle < ${zsh_plugins}.txt > ${zsh_plugins}.zsh
  )
fi

source ${zsh_plugins}.zsh


#  |_ o __|_ _ ._
#  | ||_> |_(_)|\/
#               /

export HISTFILE=~/.config/zsh/zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export HISTTIMEFORMAT="[%F %T] "


fpath=($fpath ~/.config/zsh/zsh-functions)
autoload -Uz fzf-git
autoload -Uz gitprompt
autoload -Uz ptime
autoload -Uz addalias
autoload -Uz addplugin
autoload -Uz ezsh
autoload -Uz helpme
autoload -Uz command-not-found
autoload -Uz autols
autoload -Uz shrinkpath
autoload -Uz command-exec-time

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

source ~/.config/zsh/.zsh_exports_and_aliases.zsh
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

#source ~/.config/zsh/zsh-plugins/fzf-tab/fzf-tab.plugin.zsh

zstyle ':fzf-tab:complete:systemctl-*:*' fzf-preview 'SYSTEMD_COLORS=1 systemctl status $word'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
zstyle ':fzf-tab:complete:(-command-|-parameter-|-brace-parameter-|export|unset|expand):*' \
	fzf-preview 'echo ${(P)word}'
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-preview \
 ' [[ $group == "[process ID]" ]] && ps --pid=$word -o cmd --no-headers -w -w'
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-flags --preview-window=down:3:wrap

#source ~/.config/zsh/zsh-functions/ttyfriendlyprompt
#source ~/.config/zsh/zsh-functions/startup
#source ~/.config/zsh/zsh-functions/shrinkpath
#source ~/.config/zsh/zsh-data/zsh-vars
#source ~/.config/zsh/zsh-functions/options
#source ~/.config/zsh/zsh-functions/fetch
#PCOLOR=$(echo $PCOLOR |  grep -o '[[:digit:]]*' | cut -c 4)
#source ~/.config/zsh/zsh-functions/transientprompt

command-not-found
fzf-git
gitprompt
autols
command-exec-time


setopt inc_append_history extended_history hist_find_no_dups hist_ignore_all_dups hist_verify
