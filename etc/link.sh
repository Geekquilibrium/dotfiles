#!/bin/bash

if [[ -z "$PS1" ]]; then
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
  linkar ~/dotfiles/bin/vim/vimrc ~/.vimrc
  linkar ~/dotfiles/bin/vim ~/.vim

  # git
  #linkar ~/dotfiles/etc/gitconfig ~/.gitconfig
  linkar ~/dotfiles/etc/gitignore ~/.gitignore

  # misc
  linkar ~/dotfiles/etc/ssh_config ~/.ssh/config

  source ~/.bash_profile
else
  echo -e "${COLOR_RED}You should source this, not run it, for example: source ./linkar${COLOR_NC}"
fi
