#!/bin/bash

MARK_START="# --UltraClear START"
MARK_END="# --UltraClear END"

if [[ -e ~/.ultraclear ]]; then
    read -r -p "Uninstall UltraClear? [y/N] " response

    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
        echo "Uninstalling UltraClear..."

        rm ~/.ultraclear

        # Remove block safely
        sed -i '' "/$MARK_START/,/$MARK_END/d" ~/.zshrc

        source ~/.zshrc

        echo "UltraClear removed."
    else
        echo "Cancelled."
    fi
    exit
fi

echo "Installing UltraClear..."

cat >> ~/.zshrc << 'EOF'

# --UltraClear START
clear() {
  command clear
  printf "\033[H\033[2J\033[3J"
}

cls() {
  clear
}
# --UltraClear END

EOF

touch ~/.ultraclear

source ~/.zshrc

echo "UltraClear installed successfully!"
