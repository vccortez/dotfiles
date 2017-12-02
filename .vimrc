" settings
set nocompatible

set cursorline
set noshowmode

set expandtab
set softtabstop=2
set shiftwidth=2

set autoindent
set backspace=indent,eol,start

set hlsearch
set number

set ignorecase
set smartcase

set t_Co=256
set background=dark

syntax on
colorscheme solarized

imap <Tab> <C-X><C-F>

" plugins
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized', { 'do': 'cp -r ./colors ../../' }

call plug#end()

" plugins config

" airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
