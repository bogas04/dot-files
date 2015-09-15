set nocompatible " For viM  

" For Vundles
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Main Vundles
Plugin 'bling/vim-airline'
Bundle 'jiangmiao/auto-pairs'
Bundle 'wellsjo/wellsokai.vim'
Bundle 'scrooloose/nerdcommenter'

" Experimental Vundles
"Plugin 'mattn/emmet-vim'
"Bundle "tpope/vim-surround"
"Bundle "scrooloose/nerdtree"
"Bundle "Valloric/YouCompleteMe"

call vundle#end()
filetype plugin indent on
" Vundles end

" Mappings (OSX)
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
  "nmap <Leader>+ <c-y>,

" For status line tweaks
set encoding=utf-8
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%L'

" For clipboard mapping
set clipboard=unnamedplus
set clipboard=unnamed

" For line numbers
set number

" For carriage returns 
set list
set listchars=eol:¬

" Syntax highlighting
syntax on
" Colorscheme
colorscheme wellsokai

" Marker for changing
set cpoptions+=$
" For backspace to work
set backspace=indent,eol,start

" For fixing tabs to 2
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
