#!/bin/bash

# cp vim config file to ~/.vimrc
cp ./vimrc ~/.vimrc

mkdir -p ~/.vim/
cp -R ./colors ~/.vim/
cp -R ./doc ~/.vim/
cp -R ./plugin ~/.vim
