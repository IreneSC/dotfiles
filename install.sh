#!/usr/bin/env bash

# install vim-plug
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install the tmux plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy over the actual "dotfiles" themselves
cp ~/dotfiles/.vimrc ~/.

