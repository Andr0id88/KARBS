#!/usr/bin/env sh

# Setup plugged for nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Update\install all vim plugins
nvim -E -c "PlugUpdate|visual|q|q"

# This is needed to get deoplete working in vim.
# :UpdateRemotePlugins

#Test out this command in cli:
nvim -E -c "UpdateRemotePlugins|visual|q|q"

# Installs omf and then the lambda theme
# curl -L https://get.oh-my.fish | fish
# omf install lambda
# bash

curl -L git.io/antigen > .config/zsh/antigen.zsh

# Create home folder structure

mkdir -p $HOME/devops/{ansible,docker,jenkins,k8s,puppet,vagrant,powershell}

mkdir -p $HOME/Documents/{cheatsheets,dotfiles,pkglist}

mkdir -p $HOME/development/{eclipse,projects,visualstudiocode}

mkdir -p $HOME/github/{external,myrepos}

mkdir -p $HOME/Videos/{tutorials,series,movies}

mkdir $HOME/Music $HOME/sourcecode

mkdir $HOME/Pictures/{wallpaper,people,logo,meme}
