#!/bin/bash

# Setup the i3 window manager over a gnome session.
# Reference: http://blog.hugochinchilla.net/2013/03/using-gnome-3-with-i3-window-manager/
sudo cp gnome-i3.desktop /usr/share/xsessions
sudo cp i3.session /usr/share/gnome-session/sessions
cp config ~/.i3

# Remove the bottom panel/bar from gnome.
gsettings set org.gnome.gnome-panel.layout toplevel-id-list "['top-panel-0']"
