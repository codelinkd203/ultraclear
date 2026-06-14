echo "
# UltraClear

clear() {
  command clear
  printf "\033[H\033[2J\033[3J"
}
" >> ~/.zshrc
