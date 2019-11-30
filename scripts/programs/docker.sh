#!/bin/bash

# prefer debian version over docker direct
# see https://www.collabora.com/news-and-blog/blog/2018/07/04/docker-io-debian-package-back-to-life/
sudo apt install -y docker.io

# Manage Docker as a non-root user
sudo groupadd docker
sudo usermod -aG docker $USER

# Confirm install (need sudo because non-root requires log out to re-eval group membership)
sudo docker run hello-world