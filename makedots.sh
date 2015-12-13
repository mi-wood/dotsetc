#!/bin/bash
sed -n -e '/#COPY/,$p' ~/.gitconfig  > dots/_gitconfig
cp ~/.inputrc dots/_inputrc
cp ~/.tmux.conf dots/_tmux.conf
cp ~/.vimrc dots/_vimrc
cp ~/.zshrc dots/_zshrc_linux

cp ~/.vim/colors/mwood.vim configs/mwood.vim
cp ~/.oh-my-zsh/themes/mwood.zsh-theme configs/mwood.zsh-theme
