#!/bin/bash

CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Install vim and vim-plug
sudo apt install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install .vimrc file
cp $CURR_DIR/vim_dotfiles $HOME/.vimrc

# Run vim-plug to install all necessary plugins
vim +'PlugInstall --sync' +qa

