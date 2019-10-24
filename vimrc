if has("win32")
  set shell=powershell
  set shellcmdflag=-c
  set shellquote="\
  set shellxquote=
  set shellpipe=|
  set shellredir=>
  " fixes scrolling
  set tsl=0
endif

filetype plugin indent on
set fileformat=unix
set fileformats=unix,dos
"set nobinary
 
set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/Dropbox/vim/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/vim-jsx-improve'
Plug 'sheerun/vim-polyglot'

call plug#end()

syntax on
colorscheme desert

set wildmenu
set showcmd

set backspace=2 " make bs work like most other apps

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set splitbelow
set splitright

set relativenumber
set number

set ignorecase
set smartcase

"set t_Co=256

"Maps write to control-s
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>

if has("autocmd")

endif
