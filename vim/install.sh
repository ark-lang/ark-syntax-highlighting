#!/bin/bash
# Script to install vim-ark

mkdir -p ~/.vim/syntax && cp ark.vim ~/.vim/syntax/ark.vim
echo "*****   remember to add the following to your .vimrc:   *****"
echo "au BufRead,BufNewFile *.ark set filetype=ark"
