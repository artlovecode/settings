#!/bin/bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

ln -s ./init.vim ~/.config/nvim/init.vim
ln -s ./vimrc.bundles ~/.config/nvim/vimrc.bundles
ln -s ./vimrc.bundles.local ~/.config/nvim/vimrc.bundles.local
ln -s ~/.zshrc

brew bundle

source ~/.zshrc

vim +PlugInstall

