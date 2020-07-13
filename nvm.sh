# nvm (brew)
# brew install nvm
# https://www.growingwiththeweb.com/2018/01/slow-nvm-init.html

# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.
NVM_INIT_SCRIPT="/usr/local/opt/nvm/nvm.sh"
NVM_BASH_COMPLETION="/usr/local/opt/nvm/etc/bash_completion.d/nvm"
if [ -s "$NVM_INIT_SCRIPT" ] && [ ! "$(type -t __init_nvm)" = function ]; then
  # 1. NVM_DIR
  export NVM_DIR="$HOME/.nvm"

  # 2. Load nvm bash_completion
  [ -s "$NVM_BASH_COMPLETION" ] && . "$NVM_BASH_COMPLETION"

  declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')
  function __init_nvm() {
    for i in "${__node_commands[@]}"; do unalias $i; done
    # 3. Load nvm
    [ -s "$NVM_INIT_SCRIPT" ] && . "$NVM_INIT_SCRIPT"

    unset __node_commands
    unset -f __init_nvm
  }
  for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi
