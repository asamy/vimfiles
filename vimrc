set nocompatible

let g:airline_theme="bubblegum"
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#statusline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'
Plugin 'fatih/vim-go'
Plugin 'editorconfig/editorconfig-vim'
call vundle#end()
filetype plugin indent on

" go fmt
let g:go_fmt_command = "goimports"

set number
set mouse=a
set ttymouse=xterm2
set noexpandtab
set tabstop=8
set shiftwidth=8
set softtabstop=8
set textwidth=90
set wrap
set linebreak
set nolist
set cindent
set cinoptions=:0,l1,t0,g0,(0
set backspace=eol,start,indent
set hlsearch

" Color scheme
set t_Co=256
set background=dark
"colorscheme Tomorrow-Night-Bright
"colorscheme delek
colorscheme molokai
highlight folded ctermbg=238
highlight cOperator cterm=bold
syntax enable

au BufEnter /usr/include/c++/* set filetype=cpp
au BufRead,BufNewFile *.S set filetype=gas
au BufRead,BufNewFile *.s set filetype=gas
au BufRead,BufNewFile *.asm set filetype=masm
au BufRead,BufNewFile *.sp set filetype=sourcepawn
au BufRead,BufNewFile *.html set textwidth=160
au BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\	exe "normal! g`\"" |
			\ endif
au BufWritePost .vimrc source ~/.vimrc
au BufWritePre *.py normal m`:%s/\s\+$//e ``

nmap <C-J> vip=
" reindent file
map <F2> mzgg=G`z

"clear highlight
nnoremap <C-L> :nohlsearch<cr>
"switch to hex mode
noremap <C-A> :%!xxd<cr>
noremap <C-F> :%!xxd -r<cr>

"subsitute windows style for unix.
noremap <C-W> :%s/\r$//g

