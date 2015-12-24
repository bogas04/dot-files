set nocompatible " For viM  

"""""""""""""
"  Plugins  "
"""""""""""""

call plug#begin('~/.vim/bundle')

" Themes
Plug 'wellsjo/wellsokai.vim'
"Plug 'bling/vim-airline'

" Plugins
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

" Language Support
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
Plug 'wavded/vim-stylus'

" Snippets
Plug 'mattn/emmet-vim'
Plug 'honza/vim-snippets'

call plug#end()
filetype plugin indent on

""""""""""""
"  Tweaks  "
""""""""""""

"colorscheme badwolf 
colorscheme wellsokai 
tab all
syntax on " Syntax highlighting
set list " For carriage returns 
set relativenumber " For relative numbers
set number " For line numbers
set expandtab " \t -> <spaces>
set incsearch " For showing as we search
set tabstop=2 " For fixing tabs to 2
set cursorline " For highlighting cursor line
set showmatch " Shows matching pair
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
set statusline=\ %f  " File address
set statusline+=\ %y " File type
set statusline+=%= " Shift to right side
set statusline+=\Line:%l " Current line
set statusline+=/  " Separator
set statusline+=%L\  " Total lines
"let g:airline_section_b = '%L'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
let g:jsx_ext_required = 0 " vim-jsx for .js

"""""""""""""""""""
"  Mappings (OSX) "
"""""""""""""""""""

" Leader
let mapleader ="\<Space>"
" Indent
nmap <Leader>= gg=G``<CR>
" Emmet
nmap <Leader>m <C-y>
" NERDTree
nmap <Leader>t :NERDTreeToggle<CR>
" Rupees
nmap <Leader>INR i₹ 
" New Tab 
nmap ø :tabnew 
" Add Surround 
nmap <Leader>as ysiw
" Turn off search highlight
nmap <Leader><space> :nohlsearch<CR>
" Switch Tab
nmap ‘ gt<CR>
imap ‘ <Esc>gt<CR>
nmap “ gT<CR>
imap “ <Esc>gT<CR>
