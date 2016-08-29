[[ -n $ZPLUG_HOME ]] || return

source $ZPLUG_HOME/init.zsh

zplug "arzzen/calc.plugin.zsh"
zplug "supercrabtree/k"
zplug "zsh-users/zsh-syntax-highlighting"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
