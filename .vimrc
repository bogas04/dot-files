set nocompatible " For viM  

"""""""""""""
"  Plugins  "
"""""""""""""
call plug#begin('~/.vim/bundle')

" Themes
Plug 'w0ng/vim-hybrid'
Plug 'jacoborus/tender'

" Plugins
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'garbas/vim-snipmate'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'wincent/ferret'

" Dependencies¬
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" Language Support
Plug 'ap/vim-css-color'
Plug 'heavenshell/vim-jsdoc'
"Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
"Plug 'othree/yajs.vim'
Plug 'isRuslan/vim-es6'
Plug 'mxw/vim-jsx'
Plug 'wavded/vim-stylus'
Plug 'gabrielelana/vim-markdown'

call plug#end()

"""""""""""""""""
"  Colorscheme  "
"""""""""""""""""
set background=dark
"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
"colorscheme hybrid
colorscheme tender
"colorscheme koehler
syntax on " Syntax highlighting

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
" jsx
let g:jsx_ext_required = 0 " vim-jsx for .js

" statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntastic
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_jsx_checkers = ['eslint']
"let g:syntastic_javascript_checkers = ['eslint']

" markdown
let g:markdown_enable_spell_checking = 0 " disable spell check for markdown

" vim-jsdoc
let g:jsdoc_enable_es6 = 1
let g:jsdoc_input_description = 1
let g:jsdoc_allow_input_prompt = 1

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
" Rupees
nmap <Leader>INR i₹
" Indent
nmap <Leader>= gg=G``<CR>
" Add Surround 
nmap <Leader>as ysiw
" JsDoc
nmap <Leader>jsd :JsDoc<CR>
" NERDTree
nmap <Leader>t :NERDTreeTabsToggle<CR>
" Turn off search highlight
nmap <Leader><space> :nohlsearch<CR>

" Switch Tab
nmap <Leader>[ gT<CR>
nmap <Leader>] gt<CR>

" Switch Window
nmap <Leader>l <c-w>l
nmap <Leader>k <c-w>k
nmap <Leader>j <c-w>j
nmap <Leader>h <c-w>h

" FZF
nmap <Leader>p :tabnew<CR>:FZF<CR>
nmap <Leader>P :FZF<CR>
