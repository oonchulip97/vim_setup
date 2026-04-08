#!/bin/bash

CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Install dependencies
sudo apt install python-pip  # switch to pip3 for ubuntu 20.0 or above
python -m pip install --user --upgrade pip setuptools wheel

# Install vim and vim-plug
sudo apt install vim curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install dependencies
sudo apt install exuberant-ctags  # switch to universal-ctags for ubuntu 20.0 or above
sudo apt install cppcheck flake8 shellcheck  # linter
pip install --user cpplint  # linter

# Install .vimrc file
cp $CURR_DIR/vim_dotfiles $HOME/.vimrc

# Run vim-plug to install all necessary plugins
vim +'PlugInstall --sync' +qa
