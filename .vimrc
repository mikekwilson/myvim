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
set hidden

set fdm=syntax                  " activate code-folding 
set laststatus=2                " make airline vasible with 1 window
set colorcolumn=81    

"" Whitespace
set nowrap			                " don't wrap lines
set tabstop=2 shiftwidth=2	    " a tab is 2 spaces
set expandtab		              	" use spaces, not tabs
set backspace=indent,eol,start	" backspace through everything in insert mode

"" Searching
set hlsearch			" highlight matches
set incsearch			" incremental searching
set ignorecase		" searches are case insensitive
set smartcase			" unless they contain at least on capital

"" For Latex-Vim
set shellslash
let g:tex_flavor='latex'

"" CTRL-p maps
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers = ['jshint']

"" todo.txt
map <leader>t :exe "!todo.sh add " . shellescape(input("Enter todo item: "),1) <CR> \|:redraw!

"" Remaps
let mapleader=","
inoremap jk <ESC>
inoremap <leader>w <ESC>:w<CR>

