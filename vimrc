set nocompatible " For viM  

" For Vundles
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Main Vundles
Plugin 'bling/vim-airline'
Bundle "tpope/vim-surround"
Bundle "jiangmiao/auto-pairs"

" Experimental Vundles
"Bundle "scrooloose/nerdtree"
"Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "tomtom/tlib_vim"
"Bundle "scrooloose/nerdcommenter"
"Bundle "Valloric/YouCompleteMe"
"Bundle "Lokaltog/vim-powerline"

call vundle#end()         
filetype plugin indent on  
" Vundles end

" Mappings
nmap † :tabnew<CR>
nmap ø :tabnew 
nmap ∑ :tabclose<CR>
nmap ‘ gt<CR>
nmap “ gT<CR>
imap † <Esc>:tabnew<CR>
imap ø <Esc>:tabnew 
imap ∑ <Esc>:tabclose<CR>
imap ‘ <Esc>gt<CR>
imap “ <Esc>gT<CR>

" For status line tweaks
set encoding=utf-8
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = ' '

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
