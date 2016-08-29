#!/bin/bash

wget https://raw.githubusercontent.com/AJua/Setup-dot-sh/master/sources.list -O /tmp/sources.list 
cp /tmp/sources.list /etc/apt/sources.list

apt-get update
apt-get install -y curl git python-pip python-dev vim-gtk nvidia-cuda-toolkit pcmanx-gtk2

# nodejs 4.x
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

# vim config
git clone https://github.com/ajua/dotvim ~/.vim
ln -s ~/.vimrc ~/.vim/_vimrc
cd ~/.vim/bundle
git submodule update --init --recursive



