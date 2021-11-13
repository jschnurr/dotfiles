#!/bin/bash

# error if any command exits non-zero
set -e

# load our helpers
source ./helpers.sh

# Basics
sudo apt update && sudo apt upgrade -y
sudo apt install -y \
  zsh \
  ca-certificates \
  curl \
  git \
  htop \
  powerline \
  xclip \
  python3-pip

# remove default .zshrc since we're linking it
rm ~/.zshrc

# dotfiles
linkDotfile .zshrc
linkDotfile .gitconfig
linkDotfile .gitmessage
linkDotfile .tmux.conf

# set default shell to zsh
chsh -s $(which zsh)

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# See our shell changes
source ~/.zshrc
