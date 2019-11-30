#!/bin/bash

# Generate default SSH key for use on Github and elsewhere
ssh-keygen -t rsa -b 4096 -C "jschnurr@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

xclip -sel clip < ~/.ssh/id_rsa.pub
echo Key copied to the clipboard. Please paste it into Github.