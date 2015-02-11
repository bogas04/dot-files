set nocompatible " For viM  

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
Plugin 'bling/vim-airline'

" Experimental Vundles
"Bundle "Valloric/YouCompleteMe"
"Bundle "Lokaltog/vim-powerline"

call vundle#end()         
filetype plugin indent on  
" Vundles end

" For status line tweaks
set encoding=utf-8
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%{getcwd()}'

" For clipboard mapping
set clipboard=unnamedplus
set clipboard=unnamed

:syntax on  " For syntax highlighting
set backspace=indent,eol,start " For backspace to work
:colorscheme zellner " Color scheme

" For fixing tabs to 2
set tabstop=2
set shiftwidth=2   
set softtabstop=2 
set expandtab      
