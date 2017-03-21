set nocompatible " For viM  

"""""""""""""
"  Plugins  "
"""""""""""""
call plug#begin('~/.vim/bundle')

" Themes
Plug 'tyrannicaltoucan/vim-deep-space'

" Plugins
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

Plug 'sindresorhus/vim-xo'
Plug 'vim-syntastic/syntastic'

Plug 'scrooloose/nerdcommenter'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Dependencies¬
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" Language Support
Plug 'gabrielelana/vim-markdown'
Plug 'ap/vim-css-color'

"Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

"""""""""""""""""
"  Colorscheme  "
"""""""""""""""""

set background=dark
set termguicolors
colorscheme deep-space
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

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_enable_signs=0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_w = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_jsx_checkers = ['xo']
let g:syntastic_javascript_checkers = ['xo']

" markdown
let g:markdown_enable_spell_checking = 0 " disable spell check for markdown

" vim-jsdoc
"let g:jsdoc_enable_es6 = 1
"let g:jsdoc_input_description = 1
"let g:jsdoc_allow_input_prompt = 1

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

" Indent
nmap <Leader>= gg=G``<CR>

" JsDoc
nmap <Leader>jsd :JsDoc<CR>

" Turn off search highlight
nmap <Leader><space> :nohlsearch<CR>

" Switch Tab
nmap <Leader>[ gT<CR>
nmap <Leader>] gt<CR>

" FZF
nmap <Leader>p :tabnew<CR>:FZF<CR>
nmap <Leader>P :FZF<CR>
