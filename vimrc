" For viM
set nocompatible          

" For Vundles
filetype off       
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" main vundles
Bundle "scrooloose/nerdtree"
Bundle "tpope/vim-surround"

" experimental vundles
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"

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

" For autocomplete brackets
function! ConditionalPairMap(open, close)
  let line = getline('.')
  let col = col('.')
  if col < col('$') || stridx(line, a:close, col + 1) != -1
    return a:open
  else
    return a:open . a:close . repeat("\<left>", len(a:close))
  endif
endf

inoremap <expr> ( ConditionalPairMap('(', ');')
inoremap <expr> { ConditionalPairMap('{', '}')
inoremap <expr> [ ConditionalPairMap('[', ']')
inoremap <expr> < ConditionalPairMap('<', '>')
inoremap " ""<Left>
inoremap ' ''<Left>

" For backspace to work
set backspace=indent,eol,start 

" For fixing tabs to 2
set tabstop=2
set shiftwidth=2   
set softtabstop=2 
set expandtab      
