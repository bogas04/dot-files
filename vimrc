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
Bundle "wellsjo/wells-colorscheme.vim"
Bundle "scrooloose/nerdcommenter"

" Experimental Vundles
"Bundle "scrooloose/nerdtree"
"Bundle "Valloric/YouCompleteMe"

call vundle#end()         
filetype plugin indent on  
" Vundles end

" Mappings (OSX)
  " New Tab
  nmap † :tabnew<CR>
  imap † <Esc>:tabnew<CR>
  " Open in New Tab
  nmap ø :tabnew 
  imap ø <Esc>:tabnew 
  " Close Tab
  nmap ∑ :tabclose<CR>
  imap ∑ <Esc>:tabclose<CR>
  " Tab Switching
  nmap ‘ gt<CR>
  nmap “ gT<CR>
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

" Syntax highlighting
syntax on  
" Colorscheme
colorscheme wells-colors

" Marker for changing
set cpoptions+=$
" For backspace to work
set backspace=indent,eol,start

" For fixing tabs to 2
set tabstop=2
set shiftwidth=2   
set softtabstop=2 
set expandtab      
