#!/bin/bash

#
# Pre requisites
#

# install flake8
echo "We need your password to install flake8"
sudo pip install flake8

# vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# link our config
rm ~/.vimrc &> /dev/null
ln -s $(pwd)/vimrc ~/.vimrc &> /dev/null

vim +BundleInstall +qall
echo "Done."
