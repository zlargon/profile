# Disable shell warning
# https://support.apple.com/zh-tw/HT208050
export BASH_SILENCE_DEPRECATION_WARNING=1

source $HOME/profile/bash-completion.sh
source $HOME/profile/bash-ps1.sh
source $HOME/profile/ls.sh
source $HOME/profile/mkcd.sh

# package managers
source $HOME/profile/nvm.sh
source $HOME/profile/sdkman.sh
source $HOME/profile/conda.sh

# others
source $HOME/profile/android.sh
source $HOME/profile/jupyter-lab.sh
source $HOME/profile/sqlite.sh
source $HOME/profile/postgres.sh
source $HOME/profile/terraform.sh

# alias
alias git-diff="git diff --no-index"
alias ptt="ssh bbsu@ptt.cc"
alias rc="code $HOME/profile"
alias y="yarn"
alias vi="vim"

export PATH="$HOME/profile/bin:$PATH"
