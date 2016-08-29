if [[ `uname` == 'Linux' ]]; then
  export LINUX=1
  export ZPLUG_HOME=~/.zplug
elif [[ `uname` == 'Darwin' ]]; then
  export OSX=1
  export ZPLUG_HOME=/usr/local/opt/zplug
fi
