" For viM
set nocompatible          

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
"Bundle "powerline/powerline"
"Bundle "Valloric/YouCompleteMe"

call vundle#end()         
filetype plugin indent on  
" Vundles end

" For status line tweaks
set laststatus=2
set statusline+=%t         "tail of the filename
set statusline+=\ %y      "filetype
set statusline+=\ (%l/%L)    "cursor line/total lines

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
