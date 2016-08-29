#!/bin/bash

curl https://debgen.simplylinux.ch/txt/stretch/sources_062ecaa39c5b5f8d3167faa886542114fd27eb31.txt | sudo tee /etc/apt/sources.list

apt-get update
apt-get install git python-pip python-dev

git clone https://github.com/ajua/dotvim ~/.vim
ln -s ~/.vimrc ~/.vim/_vimrc
cd ~/.vim/bundle
git submodule update --init --recursive

