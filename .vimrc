set nocompatible " For viM  

"""""""""""""
"  Vundles  "
"""""""""""""

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Main Vundles
Bundle 'mxw/vim-jsx'
Plugin 'othree/yajs.vim'
Plugin 'bling/vim-airline'
Bundle 'jiangmiao/auto-pairs'
Bundle 'wellsjo/wellsokai.vim'
Plugin 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdcommenter'

" Experimental Vundles
"Plugin 'mattn/emmet-vim'
"Bundle 'tpope/vim-surround'
"Bundle 'scrooloose/nerdtree'
"Bundle 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

""""""""""""
"  Tweaks  "
""""""""""""

colorscheme wellsokai
tab all
syntax on " Syntax highlighting
set list " For carriage returns 
set number " For line numbers
set expandtab " \t -> <spaces>
set incsearch " For showing as we search
set tabstop=2 " For fixing tabs to 2
set shiftwidth=2 " For fixing tabs to 2
set softtabstop=2 " For fixing tabs to 2
set laststatus=2 " Status line tweaks
set cpoptions+=$ " Marker for changing
set listchars=eol:¬ " For showing carriage returns
set encoding=utf-8 " Status line tweaks
set clipboard=unnamedplus " For clipboard mapping
set clipboard=unnamed " For clipboard mapping
set backspace=indent,eol,start " For backspace to work

""""""""""""""""""""""""""""
"  Plugin Specific Tweaks  "
""""""""""""""""""""""""""""

let g:airline_section_b = '%L'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:jsx_ext_required = 0 " vim-jsx for .js

"""""""""""""""""""
"  Mappings (OSX) "
"""""""""""""""""""

" Leader
let mapleader ="\<Space>"
" Indent
nmap <Leader>= gg=G
" Rupees
nmap <Leader>INR i₹ 
" New Tab 
nmap ø :tabnew 
" Switch Tab
nmap ‘ gt<CR>
imap ‘ <Esc>gt<CR>
nmap “ gT<CR>
imap “ <Esc>gT<CR>
