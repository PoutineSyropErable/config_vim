#!/usr/bin/env bash

[ -d ~/.config/vim ] && mv --backup=numbered ~/.config/vim ~/.config/vim_backup
git clone https://github.com/PoutineSyropErable/config_vim.git ~/.config/vim

[ -f ~/.vimrc ] && mv --backup=numbered ~/.vimrc ~/.vimrc.bak
ln -s ~/.config/vim/.vimrc ~/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall

apt install npm && npm -g pyright || echo "yeah this was for ubuntu testing"

cd ~/.config/vim || echo "weird"
# vim test.py
