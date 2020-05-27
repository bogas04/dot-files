set nocompatible " For viM  

"""""""""""""
"  Plugins  "
"""""""""""""
call plug#begin('~/.vim/bundle')

" Plugins
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" Code
Plug 'scrooloose/nerdcommenter'

" Language Support
Plug 'ap/vim-css-color'
Plug 'gabrielelana/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()

"""""""""""""""""
"  Colorscheme  "
"""""""""""""""""
set termguicolors
syntax enable " Syntax highlighting


"""""""""""""""""
"  File System  "
"""""""""""""""""
set path+=**
set wildignore+=*/node_modules/*
set wildignore+=*/dist/*
filetype plugin on

""""""""""""
"  Tweaks  "
""""""""""""
tab all " convert tabs to spaces
set list " For carriage returns 
set number " For line numbers
set expandtab " \t -> <spaces>
set tabpagemax=30 " limit of # of tabs
set relativenumber " For relative numbers
set incsearch " For showing as we search
set mouse=a " For better mouse support
set tabstop=2 " For fixing tabs to 2
set showmatch " Shows matching pair
set shiftwidth=2 " For fixing tabs to 2
set softtabstop=2 " For fixing tabs to 2
set laststatus=2 " Status line tweaks
set cpoptions+=$ " marker for changing
set listchars=eol:¬ " for showing carriage returns
set encoding=utf-8 " Status line tweaks
set clipboard=unnamedplus " For clipboard mapping
set clipboard=unnamed " For clipboard mapping
set backspace=indent,eol,start " For backspace to work

""""""""""""""""""
"   Status Line  "
""""""""""""""""""
set statusline=\ %f  " File address
set statusline+=\ %y " File type
set statusline+=%= " Shift to right side
set statusline+=\Line:%l " Current line
set statusline+=/  " Separator
set statusline+=%L\  " Total lines

""""""""""""""""""""""""""""
"  Plugin Specific Tweaks  "
""""""""""""""""""""""""""""
" markdown
let g:markdown_enable_spell_checking = 0 " disable spell check for markdown

" vim-jsdoc
"let g:jsdoc_enable_es6 = 1
"let g:jsdoc_input_description = 1
"let g:jsdoc_allow_input_prompt = 1

"""""""""""""""""""
"  Mappings (OSX) "
"""""""""""""""""""
" Leader
let mapleader ="\<Space>"

" Save
nmap <Leader>w :w<CR>

" Quit 
nmap <Leader>q :q<CR>

" New Tab 
nmap <Leader>o :tabnew 

" Indent
nmap <Leader>= gg=G``<CR>

" Turn off search highlight
nmap <Leader><space> :nohlsearch<CR>

" Switch Tab
nmap <Leader>[ gT<CR>
nmap <Leader>] gt<CR>
