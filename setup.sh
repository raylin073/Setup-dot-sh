#!/bin/bash

apt-get update
apt-get install git python-pip python-dev

git clone https://github.com/ajua/dotvim ~/.vim
cd ~/.vim/bundle
git submodule update --init --recursive

