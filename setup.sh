#!/bin/bash

# update sources.list
wget https://raw.githubusercontent.com/AJua/Setup-dot-sh/master/sources.list -O /tmp/sources.list 
cp /tmp/sources.list /etc/apt/sources.list

apt-get update
apt-get install -y curl git python-pip python-dev python3-dev vim-gtk nvidia-cuda-toolkit pcmanx-gtk2 build-essential cmake r-base r-base-dev

# nodejs 4.x
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

# vim config
git clone https://github.com/ajua/dotvim ~/.vim
ln -s ~/.vim/_vimrc ~/.vimrc 
cd ~/.vim/bundle
git submodule update --init --recursive
cd ~/.vim/bundle/YouCompleteMe
./install.py --tern-completer

# Keras, backend by tensorflow with GPU 
apt-get -y install python-numpy python-scipy python-matplotlib python-pandas python-nose python-pip ipython ipython-notebook python-dev python-h5py
# python-sympy  
yes | pip install pyyaml

export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl
yes | pip install --upgrade $TF_BINARY_URL
yes | pip install git+git://github.com/fchollet/keras.git 

mkdir ~/.keras
wget https://raw.githubusercontent.com/AJua/Deep-Learning-Setup/master/keras.json -O ~/.keras/keras.json

yes | pip install jupyter
#jupyter nbextension enable --py --sys-prefix widgetsnbextension

git clone https://github.com/yenlung/Days-on-Jupyter.git ~/Days-on-Jupyter
cd ~/Days-on-Jupyter
jupyter notebook --no-browser

