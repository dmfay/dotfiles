if [[ `uname` == 'Linux' ]]; then
  export OS=linux
  export ZPLUG_HOME=~/.zplug
elif [[ `uname` == 'Darwin' ]]; then
  export OS=osx
  export ZPLUG_HOME=/usr/local/opt/zplug
fi
