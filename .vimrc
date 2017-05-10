set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-vinegar'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'chriskempson/base16-vim'
Plugin 'stanangeloff/php.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'raimondi/delimitmate'
Plugin 'yggdroot/indentline'
Plugin 'ap/vim-css-color'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'easymotion/vim-easymotion'
Plugin 'airblade/vim-rooter'
Plugin 'vimwiki/vimwiki'
Plugin 'myusuf3/numbers.vim'

call vundle#end()

set background=dark
let base16colorspace=256
colorscheme base16-default-dark

set encoding=utf-8
set showcmd

set relativenumber
set number
set numberwidth=4
set hidden
set colorcolumn=80

"" Whitespace
set nowrap			                " don't wrap lines
set tabstop=2 shiftwidth=2	    " a tab is 2 spaces
set expandtab		              	" use spaces, not tabs
set smartindent

"" Searching
set hlsearch			" highlight matches
set incsearch			" incremental searching
set ignorecase		" searches are case insensitive
set smartcase			" unless they contain at least on capital

""
" Tags
""
" autocmd FileType java set tags+=~/.tags/java.tags

"" For Latex-Vim
set shellslash
let g:tex_flavor='latex'

""
" vimwiki
""
let g:vimwiki_list = [{ 'path': '~/.vimwiki'}]

"" 
" VIM-Airline
""
set laststatus=2                " make airline vasible with 1 window
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1

"" DelimitMate
let delimitMate_expand_cr = 1

"" CTRL-p maps
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_bottom = 0     " show window at top of screen
let g:ctrlp_match_window_reversed = 0   " show results from top to bottom
let g:ctrlp_custom_ignore = 'node_modules\|vendor\|bower_components\|build\|bin'

""
" ECLIM
""
"let g:EclimFileTypeValidate = 0   " Use Syntastic for validation

""
" Syntastic Settings
""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""
" NERDTree
""
map <C-o> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""
" vim-table-mode
""
""let g:table_mode_corner="|"

"" todo.txt
map <leader>t :exe "!todo.sh add " . shellescape(input("Enter todo item: "),1) <CR>

"" 
" Basic Remaps
""
let mapleader=","
map <leader>s :source ~/.vimrc<CR>
inoremap jk <ESC>
inoremap <leader>w <ESC>:w<CR>
nnoremap j gj
nnoremap k gk

""
" Window split navigation
""
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l
" nnoremap <C-/> <C-w>w

""
" Buffer navigation
""
map <C-n> <ESC>:bn<CR>
map <C-b> <ESC>:bp<CR>


let g:SuperTabDefaultCompletionType = 'context'

