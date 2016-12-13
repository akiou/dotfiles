set nocompatible
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    set runtimepath+=~/.vim/plugin
    call neobundle#begin(expand('~/.vim/bundle/'))
endif

"insert here your Neobundle plugins"
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-latex/vim-latex'
call neobundle#end()

nnoremap <silent><C-e> :NERDTreeToggle<CR>
inoremap <silent> jj <ESC>

"COMPLEMENT PARENTHESES
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap < <><Left>

let mapleader = "\<Space>"

filetype plugin indent on

syntax on

colorscheme darkblue

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

""
"" Vim-LaTeX
""
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Imap_UsePlaceHolders = 1
let g:Imap_DeleteEmptyPlaceHolders = 1
let g:Imap_StickyPlaceHolders = 0
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_FormatDependency_pdf = 'dvi,pdf'
let g:Tex_FormatDependency_ps = 'dvi,ps'
let g:Tex_CompileRule_pdf = 'ptex2pdf -l -ot "-synctex=1 -interaction=nonstopmode -file-line-error-style" $*'
let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_dvi = 'platex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
let g:Tex_BibtexFlavor = 'pbibtex'
let g:Tex_MakeIndexFlavor = 'mendex $*.idx'
let g:Tex_UseEditorSettingInDVIViewer = 1
let g:Tex_ViewRule_pdf = 'open -a Preview.app'
let g:Tex_ViewRule_ps = 'open'
let g:Tex_ViewRule_dvi = 'open'
