#!/usr/bin/env sh

# Setup plugged for nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Update\install all vim plugins
nvim -E -c "PlugUpdate|visual|q|q"

bleedingnvim=ppa:neovim-ppa/unstable

if ! grep -q "^deb .*$bleedingnvim" /etc/apt/sources.list/etc/apt/sources.list.d/*; then
    add-apt-repository ppa:neovim-ppa/unstable -y && apt-get install neovim -y
fi

nvim -E -c "UpdateRemotePlugins|visual|q|q"

# This is needed to get deoplete working in vim.
# :UpdateRemotePlugins



curl -L git.io/antigen > ~/.config/zsh/antigen.zsh

# Create home folder structure

mkdir -p $HOME/devops/{ansible,docker,jenkins,k8s,puppet,vagrant,powershell} \
$HOME/Documents/{cheatsheets,dotfiles,pkglist} \
$HOME/development/{eclipse,projects,visualstudiocode} \
$HOME/github/{external,myrepos} \
$HOME/Videos/{tutorials,series,movies} \
$HOME/Music $HOME/sourcecode \
$HOME/Pictures/{wallpaper,people,logo,meme} 2> /dev/null

# Download my most important git repo
if [ -z "($ls -A ~/vimwiki)" ]; then
   echo "git clone https://github.com/Andr0id88/vimwiki ~/vimwiki"
else
   echo "You allready have files in your vimwiki folder"
fi
