#!/bin/bash

./symlink.sh
./aptinstall.sh
./programs.sh
./desktop.sh

# Get all upgrades
sudo apt upgrade -y

# set default shell
chsh -s $(which zsh)

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# See our bash changes
source ~/.zshrc
