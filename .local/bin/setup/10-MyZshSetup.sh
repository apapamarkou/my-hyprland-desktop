#!/bin/bash

sudo pacman -S --needed  --noconfirm zsh git exa fortune-mod cowsay aria2 cmatrix figlet htop mc mutt pastel pastel-docs plocate w3m wget duf wiki-tui
yay -S --noconfirm --needed so-git

chsh -s /usr/bin/zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git
export ZSH=$HOME/ohmyzsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/plugins/zsh-syntax-highlighting

echo "ZSH is setup complete"
