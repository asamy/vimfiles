set nocompatible

let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#statusline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'bling/vim-airline'
Plugin 'rust-lang/rust.vim'
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
au BufRead,BufNewFile *.s set filetype=gas

nmap <C-J> vip=

