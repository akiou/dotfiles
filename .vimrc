set nocompatible
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    set runtimepath+=~/.vim/plugin
    call neobundle#begin(expand('~/.vim/bundle/'))
endif

"insert here your Neobundle plugins"
NeoBundle 'scrooloose/nerdtree'
" for LaTeX
NeoBundle 'lervag/vimtex'
" vim-quickrun
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\}
call neobundle#end()

nnoremap <silent><C-e> :NERDTreeToggle<CR>
inoremap <silent> jj <ESC>

"COMPLEMENT PARENTHESES
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

let mapleader = "\<Space>"

filetype plugin indent on

syntax on

colorscheme molokai

set nowrap

set hlsearch
set ignorecase
set smartcase

"CURSOR MOVEMENT OPTION
set backspace=indent,eol,start  "unlimit the backspace key's effects
set whichwrap=b,s,h,l,<,>,[,]   "move across lines
set scrolloff=8                 "show 8lines under and bellow cursor
set sidescrolloff=16            "show 16lines right and left cursor
set sidescroll=1                "scroll right and left at each word

set autoindent

set ruler
set wildmenu
set number
set showcmd

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set smarttab

set clipboard=unnamed,unnamedplus


let g:quickrun_config = {
\   "_" :{
\         "runner" : "vimproc",
\         "runner/vimproc/updatetime" : 60
\         },
\   "tex" : {
\       'command' : 'latexmk',
\       "outputter/buffer/split" : ":botright 8sp",
\       'outputter/error/error' : 'quickfix',
\       'hook/cd/directory': '%S:h',
\       'exec': '%c %s'
\   },
\}
