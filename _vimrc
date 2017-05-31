" **************************************************
" AUTHOR: GeorgeEYokoyama<george_y@outlook.com>
" WEBSITE: http://georgeyokoyama.com
" SINCE: 5/29/2017 
" LAST MODIFED: 5/29/2017
" **************************************************

" --------------------------------------------------
" VIM-PLUG (Plugin Manager)
" https://github.com/junegunn/vim-plug
" --------------------------------------------------
call plug#begin('~/Vim/vimfiles/plugged')

"" Plugins
Plug 'https://github.com/joshdick/onedark.vim'              " gvim theme
Plug 'https://github.com/sheerun/vim-polyglot'              " syntax support
Plug 'https://github.com/vim-airline/vim-airline'           " improved status bar
Plug 'https://github.com/vim-airline/vim-airline-themes'    " status bar theme
Plug 'https://github.com/Yggdroot/indentLine'               " inden guide

call plug#end()

" --------------------------------------------------
" EDITOR BEHAVIOR
" --------------------------------------------------
"" Required
set nocompatible       " remove vi compatibility

"" Coding Awareness
set guifont=Consolas:h11:cANSI " font
syntax enable                  " syntax highlighting
set number                     " display line number
set ruler                      " display column number
set showmatch                  " highlight matching brace
set matchtime=3                " briefly jump to matching brace
set wrap                       " text wrap
set textwidth=0                " diable max width of text for wrapping
set wrapmargin=0               " right margin for wrapping


"" Search
set ignorecase                 " case is ignored
set hlsearch                   " search match highlighting
set incsearch                  " incremental search

"" Tabs & Indentations
set expandtab                  " tab insert spaces
set tabstop=4                  " number of space characters on tab
set softtabstop=4              " number of space characters on tab
set shiftwidth=4               " number of space characters on indentation
set shiftround                 " round indent to multiple of shiftwidth
set autoindent                 " new line will have same indent as current line

" --------------------------------------------------
" LEADER & LOCALLEADER
" --------------------------------------------------
let mapleader = '-'
let maplocalleader = '\\'

" --------------------------------------------------
" EDIT & SOURCE VIMRC
" --------------------------------------------------
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" --------------------------------------------------
"  CUSTOM MAPPINGS
" --------------------------------------------------
"" Insert Mode
inoremap jk <esc>

"" Normal Mode

"" Visual Mode
vnoremap " <esc>a"<esc>`<i"<esc>`>     " wrap in double quotes
vnoremap ' <esc>a'<esc>`<i'<esc>`>     " wrap in single quotes

" --------------------------------------------------
"  ABBREVIATIONS
" --------------------------------------------------
iabbrev @@ george_y@outlook.com
iabbrev comcom http://georgeyokoyama.com
iabbrev gsig <cr>-- <cr>George Yokoyama<cr>george_y@outlook.com

"" Common Typos
iabbrev adn and
iabbrev waht what

" --------------------------------------------------
"  RUNTIME PATH
" --------------------------------------------------
set runtimepath+=_gvimrc
