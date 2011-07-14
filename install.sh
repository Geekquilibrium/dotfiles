#!/bin/bash

echo "Clonando dotfiles\n"
git clone --recursive git://github.com/Geekquilibrium/dotfiles.git

echo "Linkando arquivos na home\n"
source ~/dotfiles/etc/link.sh

echo "Compilando CommandT\n"
cd ~/.vim/bundle/commandt
(rake make) || warn "Ruby compilation failed."
