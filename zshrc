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

# vars
export PATH=$PATH:$HOME/.gem/ruby/2.3.0/bin

# sources
source ~/.zsh/detect-os.zsh
source ~/.zsh/git.zsh
source ~/.zsh/man.zsh
source ~/.zsh/mode.zsh
source ~/.zsh/grep-color.zsh
source ~/.zsh/plugins.zsh

if [ ! -z $OSX ]; then
  source ~/.zsh/osx/node.zsh
fi

# Set the right-hand prompt
RPS1='$(git_prompt_string)'

PROMPT='%(!.%F{1}.%F{2})%n%F{reset}@%F{1}%m%F{reset}: %F{14}%~%F{reset} ${vim_mode} %F{reset}'

if [ ! -z $LINUX ]; then
  alias ls='ls -h --color'
else
  alias ls='ls -G'
fi

alias grep='grep --color'
alias rm='rm -v'
alias vi='nvim'
alias vim='nvim'
alias vpn='sudo openvpn --config /etc/openvpn/US_Midwest.conf'

# the fuck
type fuck >/dev/null 2>&1 && { eval $(thefuck --alias) }

# pop a calendar
type when >/dev/null 2>&1 && { when cw }
