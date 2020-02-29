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


