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

call plug#begin('~/Dropbox/vim/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/vim-jsx-improve'

call plug#end()

"syntax highlighting for flow

"let g:javascript_plugin_flow=1
"syntax on

" syntastic --------------------------------------

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" ---------------------------------------------

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

set t_Co=256
colorscheme candycode

"Maps write to control-s
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>

if has("autocmd")

endif
