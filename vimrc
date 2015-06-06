set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Plugin 'jeaye/color_coded/'
call vundle#end()
filetype plugin indent on

set number
set mouse=a
set ttymouse=xterm2
set noexpandtab
set tabstop=8
set shiftwidth=8
set textwidth=140

" Color scheme
set t_Co=256
colorscheme Tomorrow-Night-Bright
highlight folded ctermbg=238
syntax enable

set autoindent
set smartindent
set smarttab
set backspace=eol,start,indent

au BufRead,BufNewFile *.S set filetype=gas

nmap <C-J> vip=

