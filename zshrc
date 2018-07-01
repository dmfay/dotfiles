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
# extra stuff
setopt extendedglob

zstyle :compinstall filename '/home/dian/.zshrc'

autoload -U compinit colors
compinit
colors

# vars
export PATH=$PATH:$HOME/.gem/ruby/2.5.0/bin

# sources
for f in $HOME/.zsh/*.zsh; do
  source "$f"
done

# os-specific stuff
if [[ -d $HOME/.zsh/$OS ]]; then
  for f in $HOME/.zsh/$OS/*.zsh; do
    source "$f"
  done
fi

# set the right-hand prompt
RPS1='$(git_prompt_string)'

# main prompt
CURUSER='%(!.%F{9}.%F{10})%n%F{reset}'
SYS='%F{9}%m%F{reset}'
STATUS='%(?.%F{15}.%F{1})@%F{reset}'
DIR='%F{14}%~%F{reset}'

PROMPT='$CURUSER$STATUS$SYS $DIR ${vim_mode} %F{reset}'

if [ $OS = 'linux' ]; then
  alias pacman='pikaur'
  alias ls='ls -h --color'
  alias listening='netstat -plnt'
else
  alias ls='ls -G'
fi

alias sudo='sudo '
alias grep='grep --color'
alias less='less -Xr'
alias locate='locate -i'
alias rm='rm -v'
alias vi='nvim'
alias vim='nvim'
alias tree='tree -C'
alias trii="(cat .gitignore & echo '.git') | sed 's/^\(.\+\)$/\1\|/' | tr -d '\n' | xargs printf \"-I '%s'\" | xargs tree -C"
alias vpn='cd /etc/openvpn && sudo openvpn --config /etc/openvpn/vpn.conf'
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# the fuck
type fuck >/dev/null 2>&1 && { eval $(thefuck --alias) }

# pop a calendar
type when >/dev/null 2>&1 && { when cw }

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/dian/.sdkman"
[[ -s "/home/dian/.sdkman/bin/sdkman-init.sh" ]] && source "/home/dian/.sdkman/bin/sdkman-init.sh"
