set nocompatible "for viM  

" For Vundles
filetype off       
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Main Vundles
Bundle "scrooloose/nerdtree"
Bundle "tpope/vim-surround"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "jiangmiao/auto-pairs"
Bundle "scrooloose/nerdcommenter"

" Experimental Vundles
Bundle "Lokaltog/vim-powerline"
"Bundle "Valloric/YouCompleteMe"

call vundle#end()         
filetype plugin indent on  
" Vundles end

" Color scheme
:colorscheme zellner 

" For status line tweaks
set encoding=utf-8
set laststatus=2
let g:Powerline_symbols = 'fancy'

" For clipboard mapping
set clipboard=unnamedplus
set clipboard=unnamed

" For syntax highlighting
:syntax on

" For backspace to work
set backspace=indent,eol,start 

" For fixing tabs to 2
set tabstop=2
set shiftwidth=2   
set softtabstop=2 
set expandtab      
