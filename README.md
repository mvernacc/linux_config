# linux_config
.*rc files for linux

# Steps for setting up a new linux box

## Basic installs
```bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install git vim gcc make curl
```

Sublime:
```bash
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install sublime-text
```


## Add git ssh keys
https://github.com/settings/keys


## Clone this repo
```bash
mkdir repos; cd repos
git clone git@github.com:mvernacc/linux_config.git
```

## Configure Bash
Add the following lines to the end of `.bashrc`:
```bash
# Include bashrc configs from my linux_config repo
# Credit: https://stackoverflow.com/a/41598077
files=(twoline_prompt.sh aliases.sh)
path="$HOME/repos/linux_config/bash/"
for file in ${files[@]}
do 
    file_to_load=$path$file
    if [ -f "$file_to_load" ];
    then
        . $file_to_load
        echo "loaded $file_to_load"
    fi
done
```


## Window tiling shortcuts
On by default in ubuntu 18.04.
http://devmartin.com/blog/2016/11/ubuntu-16.04-remap-shortcut-for-windows-aero-snap-like-window-movement-window-tiling/


## Python 3
Use `pyenv` to install python 3 and 2.7
https://github.com/pyenv/pyenv
pyenv installer: https://github.com/pyenv/pyenv-installer
Install requirements: https://github.com/pyenv/pyenv/wiki/common-build-problems


## F.lux
Nightlight feature in ubuntu 18.04 covers this need.
https://github.com/xflux-gui/fluxgui


## Signal messenger
https://signal.org/download/
