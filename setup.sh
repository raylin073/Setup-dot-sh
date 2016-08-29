#!/bin/bash

wget https://raw.githubusercontent.com/AJua/Setup-dot-sh/master/sources.list -O /tmp/sources.list 
cp /tmp/sources.list /etc/apt/sources.list

apt-get update
apt-get install git python-pip python-dev vim-gtk pcmanx-gtk2

git clone https://github.com/ajua/dotvim ~/.vim
ln -s ~/.vimrc ~/.vim/_vimrc
cd ~/.vim/bundle
git submodule update --init --recursive

