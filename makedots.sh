#!/bin/bash
cp ~/.zshrc _zshrc
cp ~/.vimrc _vimrc
cp ~/.vim/colors/mwood.vim mwood.vim
cp ~/.inputrc _inputrc
cp ~/.oh-my-zsh/themes/mwood.zsh-theme mwood.zsh-theme
sed -n -e '/#COPY/,$p' ~/.gitconfig  > _gitconfig
