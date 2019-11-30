#!/bin/bash

# Set up the desktop
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 23.0
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 6.0
gsettings set org.gnome.desktop.session idle-delay 900
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.screensaver lock-delay 60
gsettings set org.gnome.desktop.screensaver show-notifications false

# Padding around terminal
echo "vte-terminal {
    padding: 10px;
}" >> ~/.config/gtk-3.0/gtk.css