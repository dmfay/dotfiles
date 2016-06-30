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

# vars
export PATH=$PATH:/home/dian/.gem/ruby/2.3.0/bin

# Set the right-hand prompt
RPS1='$(git_prompt_string)'

PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%})%n%{$reset_color%}@%{$fg[red]%}%m%{$reset_color%}: %{$fg_no_bold[cyan]%}%~%{$reset_color%} ${vim_mode} %{$reset_color%}%'

alias grep='grep --color'
alias ls='ls -h --color'
alias vi='vim'
alias vpn='sudo openvpn --config /etc/openvpn/US_Midwest.conf'

# per http://linux-sxs.org/housekeeping/lscolors.html :
# di = directory
# fi = file
# ln = symbolic link
# pi = fifo file
# so = socket file
# bd = block (buffered) special file
# cd = character (unbuffered) special file
# or = symbolic link pointing to a non-existent file (orphan)
# mi = non-existent file pointed to by a symbolic link (visible when you type ls -l)
# ex = file which is executable (ie. has 'x' set in permissions).
# *.ext = all files of type
LS_COLORS='di=9:fi=8:ln=31:pi=13:so=13:bd=13:cd=13:or=31:mi=8:ex=35'
export LS_COLORS

# color codes from http://www.termsys.demon.co.uk/vtansi.htm#colors
# 0 Reset all attributes
# 1 Bright
# 2 Dim
# 4 Underscore  
# 5 Blink
# 7 Reverse
# 8 Hidden
#
# Foreground Colours
# 30  Black
# 31  Red
# 32  Green
# 33  Yellow
# 34  Blue
# 35  Magenta
# 36  Cyan
# 37  White
#
# Background Colours
# 40  Black
# 41  Red
# 42  Green
# 43  Yellow
# 44  Blue
# 45  Magenta
# 46  Cyan
# 47  White
export GREP_COLOR='00;1;35'

# the fuck
eval $(thefuck --alias)

# pop a calendar
when cw
