#!/bin/bash

echo " MADE BY yiyu0x (https://github.com/yiyu0x)"
echo " auto-config-vim will start ... "

go=0


masOS(){
	go=1
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install git
}	

linux(){
	go=1
	sudo apt-get -y install git vim
}



case "$OSTYPE" in
    darwin*)  macOS ;;
    linux*)   linux ;;
    *)        echo "unknown: OS: $OSTYPE, not support yet ,please call report for me " ;;
esac



if [ $go -eq 0 ]
then
    exit
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "
set nocompatible              \" be iMproved, required
filetype off                  \" required

\" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'gmarik/Vundle.vim'

call vundle#end()            \" required
filetype plugin indent on    \" required

\"airline theme
let g:airline_theme = 'light'
let g:airline_powerline_fonts = 1
set laststatus=2
set t_Co=256
" >> ~/.vimrc


vim -c "PluginInstall" -c "q" -c "q"
