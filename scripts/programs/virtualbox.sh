#!/bin/bash

# Virtualbox
# requires multiverse as it's Oracle licensed

sudo add-apt-repository multiverse && sudo apt-get update
sudo apt install virtualbox
sudo apt install virtualbox-ext-pack