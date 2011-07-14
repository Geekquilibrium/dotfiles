#!/bin/bash

if [[ -z "$PS1" ]]; then
  echo -e "${COLOR_RED}You should source this, not run it, for example: source ./linkar${COLOR_NC}"
else
  linkar(){
    if [[ -e $1 ]]; then
      if [[ -e $2 ]]; then
        rm $2
      fi

      ln -s $1 $2
    fi
  }

  # bash
  linkar ~/dotfiles/etc/bash_profile ~/.bash_profile
  linkar ~/dotfiles/etc/bashrc ~/.bashrc
  linkar ~/dotfiles/etc/bashrc_help ~/.bashrc_help

  # vim
  linkar ~/dotfiles/etc/vimfiles/vimrc ~/.vimrc
  linkar ~/dotfiles/etc/vimfiles ~/.vim

  # git
  #linkar ~/dotfiles/etc/gitconfig ~/.gitconfig
  linkar ~/dotfiles/etc/gitignore ~/.gitignore

  # misc
  linkar ~/dotfiles/etc/ssh_config ~/.ssh/config

  source ~/.bash_profile
fi