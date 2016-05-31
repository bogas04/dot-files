set nocompatible " For viM  

"""""""""""""
"  Plugins  "
"""""""""""""

call plug#begin('~/.vim/bundle')

" Themes
Plug 'w0ng/vim-hybrid'

" Plugins
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'garbas/vim-snipmate'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'

" Dependencies¬
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" Language Support
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
Plug 'wavded/vim-stylus'

call plug#end()
filetype plugin indent on

"""""""""""""""""
"  Colorscheme  "
"""""""""""""""""

set background=dark
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
colorscheme hybrid
syntax on " Syntax highlighting

""""""""""""
"  Tweaks  "
""""""""""""

tab all " convert tabs to spaces
set list " For carriage returns 
set relativenumber " For relative numbers
set number " For line numbers
set expandtab " \t -> <spaces>
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
let g:jsx_ext_required = 0 " vim-jsx for .js

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_jsx_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['eslint']

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
nmap ø :tabnew 
" Rupees
nmap <Leader>INR i₹
" Indent
nmap <Leader>= gg=G``<CR>
" Add Surround 
nmap <Leader>as ysiw
" NERDTree
nmap <Leader>t :NERDTreeToggle<CR>
" Turn off search highlight
nmap <Leader><space> :nohlsearch<CR>

" Switch Tab
nmap <Leader>[ gt<CR>
nmap <Leader>] gT<CR>
