" **************************************************
" AUTHOR: GeorgeEYokoyama<george_y@outlook.com>
" WEBSITE: http://georgeyokoyama.com
" SINCE: 5/29/2017 
" LAST MODIFED: 5/31/2017
" **************************************************

" --------------------------------------------------
" VIM-PLUG (Plugin Manager)
" https://github.com/junegunn/vim-plug
" --------------------------------------------------
call plug#begin('~/Vim/vimfiles/plugged')

"" Plugins
Plug 'joshdick/onedark.vim'             " gvim theme - gvimrc
Plug 'sheerun/vim-polyglot'             " syntax support
Plug 'vim-airline/vim-airline'          " improved status bar
Plug 'vim-airline/vim-airline-themes'   " status bar theme
Plug 'nathanaelkane/vim-indent-guides'  " indent guide
Plug 'scrooloose/nerdtree'              " file tree
Plug 'mattn/emmet-vim'                  " better HTML & CSS workflow 

call plug#end()

" --------------------------------------------------
" EDITOR BEHAVIOR
" --------------------------------------------------
"" Required
set nocompatible                " remove vi compatibility

"" Coding Awareness
set guifont=Ubuntu_Mono:h12     " font
syntax enable                   " syntax highlighting
set number                      " display line number
set ruler                       " display column number
set showmatch                   " highlight matching brace
set matchtime=3                 " briefly jump to matching brace
set wrap                        " text wrap
set linebreak                   " prevent wrap inside word 
set textwidth=0                 " diable max width of text for wrapping
set wrapmargin=0                " right margin for wrapping
autocmd GUIEnter * simalt ~x    " start vim/gvim maximized, depends on windows language
autocmd VimEnter * NERDTree     " AUTOMATICALLY OPEN NERDTREE, NERDTREE DEPENDENT
autocmd VimEnter * wincmd p    " SELECT MAIN WINDOW, NOT NERDTREE, UPON VIM STARTUP, NERDTREE DEPENDENT
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif   " EXIT VIM WHEN NERDTREE ONLY

"" Search
set ignorecase                  " case is ignored
set hlsearch                    " search match highlighting
set incsearch                   " incremental search
 
"" Tabs & Indentations
set expandtab                   " tab insert spaces
set tabstop=4                   " number of space characters on tab
set softtabstop=4               " number of space characters on tab
set shiftwidth=4                " number of space characters on indentation
set shiftround                  " round indent to multiple of shiftwidth
set autoindent                  " new line will have same indent as current line
set smartindent                 " new line indent will react to syntax/stylem, dependent on autoinden on
let g:indent_guides_start_level=2              " INDENT GUIDE DEPENDENT
let g:indent_guides_guide_size=1               " INDENT GUIDE DEPENDENT 
let g:indent_guides_enable_on_vim_startup=1    " INDENT GUIDE DEPENDENT 

" --------------------------------------------------
" LEADER & LOCALLEADER
" --------------------------------------------------
let mapleader = '-'
let maplocalleader = '\\'

" --------------------------------------------------
" EDIT & SOURCE VIMRC
" --------------------------------------------------
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>egv :vsplit $MYGVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" --------------------------------------------------
"  CUSTOM MAPPINGS
" --------------------------------------------------
"" Insert Mode
inoremap jk <esc>

"" Normal Mode
nnoremap <leader>nn :NERDTreeToggle<cr>

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
