#!/bin/bash

CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Install dependencies
sudo apt install python-pip  # switch to pip3 for ubuntu 20.0 or above

# Install vim and vim-plug
sudo apt install vim curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install dependencies
sudo apt install exuberant-ctags  # switch to universal-ctags for ubuntu 20.0 or above
pip install --user "cpplint<1.3.0"  # linter switch to python3 compatible version for ubuntu 20.0 or above

# Install .vimrc file
cp $CURR_DIR/vim_dotfiles $HOME/.vimrc

# Run vim-plug to install all necessary plugins
vim +'PlugInstall --sync' +qa
