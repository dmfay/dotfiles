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

zstyle :compinstall filename '/home/dian/.zshrc'

autoload -U compinit colors
compinit
colors

# sources
source ~/.zsh/git.zsh

# Set the right-hand prompt
RPS1='$(git_prompt_string)'

PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[magenta]%}%m %{$fg_no_bold[cyan]%}%1~ %{$reset_color%}%# "
#RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

alias ls='pwd; ls --color'
alias vi='vim'
