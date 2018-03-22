" automatic vim-plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized', { 'do': 'cp -r ./colors ../../' }

call plug#end()

" settings
set autoindent
set background=dark
set backspace=indent,eol,start
set complete-=i
set cursorline
set encoding=utf-8
set expandtab
set fileformat=unix
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:›\ ,trail:·,extends:»,precedes:«,eol:˼,nbsp:˽
set mouse=a
set nocompatible
set noshowmode
set number
set ruler
set scrolloff=4
set shiftwidth=2
set smartcase
set smarttab
set softtabstop=2
set tabstop=2
set t_Co=256
set ttimeout
set ttimeoutlen=100

filetype plugin indent on
syntax enable
colorscheme solarized

imap <Tab> <C-X><C-F>
map <F10> mzgg=G`z
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

highlight NonText term=NONE cterm=NONE gui=NONE

" plugins config

" airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
