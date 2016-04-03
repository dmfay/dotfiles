HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v

# forget multiple issuances of the same command
setopt HIST_IGNORE_DUPS
setopt HIST_SAVE_NO_DUPS
# self-evident
setopt HIST_REDUCE_BLANKS
# ctrl+s/ctrl+q shouldn't do anything
setopt NO_FLOW_CONTROL
# stay frosty out there
setopt RM_STAR_WAIT
# don't display RPROMPT for previously accepted lines; only display it next to current line
setopt transient_rprompt

zstyle :compinstall filename '/home/dian/.zshrc'

autoload -U compinit colors
compinit
colors

# sources
source ~/.zsh/git.zsh
source ~/.zsh/mode.zsh

# Set the right-hand prompt
RPS1='$(git_prompt_string)'

PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%})%n%{$reset_color%}@%{$fg[magenta]%}%m%{$reset_color%}: %{$fg_no_bold[cyan]%}%~%{$reset_color%} ${vim_mode} %{$reset_color%}%'

alias grep='grep --color'
alias ls='ls --color'
alias vi='vim'
alias vpn='sudo openvpn --config /etc/openvpn/US_Midwest.conf'

# the fuck
eval $(thefuck --alias)
