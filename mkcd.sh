# mkdir + cd
# https://unix.stackexchange.com/questions/125385/combined-mkdir-and-cd
function mkcd {
  mkdir -p -- "$1" && cd -P -- "$1"
}
