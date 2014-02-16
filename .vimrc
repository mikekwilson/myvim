execute pathogen#infect()

syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1

set encoding=utf-8
set showcmd
filetype plugin indent on

set number


"" Whitespace
set nowrap			" don't wrap lines
set tabstop=2 shiftwidth=2	" a tab is 2 spaces
set expandtab			" use spaces, not tabs
set backspace=indent,eol,start	" backspace through everything in insert mode


"" Searching
set hlsearch			" highlight matches
set incsearch			" incremental searching
set ignorecase			" searches are case insensitive
set smartcase			" unless they contain at least on capital

set shellslash
let g:tex_flavor='latex'
