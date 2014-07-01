#!/bin/bash

# cp vim config file to ~/.vimrc
cp ./vimrc ~/.vimrc

mkdir -p ~/.vim/
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -R ./doc ~/.vim/
