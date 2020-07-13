# ps1 color
YELLOW="\[\e[0;33m\]"
GREEN="\[\e[0;32m\]"
BLUE="\[\e[0;34m\]"
RESET="\[\e[0m\]"

# https://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
# \h : the hostname up to the first ‘.’
# \u : the username of the current user
# \w : the current working directory, with $HOME abbreviated with a tilde
PS1="${YELLOW}\u${RESET}@${GREEN}\h${RESET}:${BLUE}\w${RESET}\$ "
