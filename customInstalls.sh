#!/usr/bin/env sh
## NOTE CHECK IF PIP PROGRAMS ARE WORKING BEFORE RUNNING!!!

# Installs the fucking trough PIP
# Fix mistakes easily with this cli program
pip install thefuck --user
# Installs pywal trough pip
# Used for changing color scheme according to a picture
pip install pywal --user


# Setup plugged for nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#This is needed to get deoplete working in vim.
:UpdateRemotePlugins

#Test out this command in cli:
nvim -E -c "UpdateRemotePlugins|visual|q|q"

# Installs omf and then the lambda theme
curl -L https://get.oh-my.fish | fish
omf install lambda
