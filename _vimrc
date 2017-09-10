" **************************************************
" AUTHOR: GeorgeEYokoyama<george_y@outlook.com>
" WEBSITE: http://georgeyokoyama.com
" SINCE: 5/29/2017
" LAST MODIFED: 9/10/2017
" **************************************************

" --------------------------------------------------
" VIM-PLUG (Plugin Manager)
" https://github.com/junegunn/vim-plug
" --------------------------------------------------
call plug#begin('~/Vim/vimfiles/plugged')

"" Plugins
" Theme (gvim)
Plug 'https://github.com/NLKNguyen/papercolor-theme'    " papercolor

" Behavior
Plug 'https://github.com/vim-airline/vim-airline'           " improved status bar
Plug 'https://github.com/vim-airline/vim-airline-themes'    " status bar theme
Plug 'https://github.com/nathanaelkane/vim-indent-guides'   " indent guide
Plug 'https://github.com/terryma/vim-multiple-cursors'      " multiple cursor
Plug 'https://github.com/easymotion/vim-easymotion'         " easy motion
Plug 'https://github.com/jeetsukumaran/vim-filebeagle'      " file tree
Plug 'https://github.com/ctrlpvim/ctrlp.vim'                " fuzzy finder
Plug 'https://github.com/moll/vim-node'                     " NodeJS Development
Plug 'https://github.com/mattn/emmet-vim'                   " improved HTML & CSS workflow

"" Syntax
Plug 'https://github.com/pangloss/vim-javascript'                   " JavaScript
Plug 'https://github.com/othree/javascript-libraries-syntax.vim'    " JavaScript Libraries

"" Under Consideration
Plug 'https://github.com/tpope/vim-fugitive'        " git wrapper
" Plug 'https://github.com/vim-syntastic/syntastic' " syntax checking
" Plug 'https://github.com/Shutnik/jshint2.vim'     " JSHint integration

call plug#end()

" --------------------------------------------------
" EDITOR BEHAVIOR
" --------------------------------------------------
"" Required
set nocompatible                " remove vi compatibility

"" Coding Awareness
set guifont=Ubuntu_Mono:h11:cANSI,Consolas:h11:cANSI     " font
if !exists("g:syntax_on")       " enable syntax highlighting
    syntax enable
endif
filetype plugin on              " filetype detection
set wildmenu                    " enhanced commandline completion
set wildignore+=*.swp,*exe      " a list of file patterns to be ignored in wildmenu
set number                      " display line number
set ruler                       " display column number
set cursorline                  " highlight current line
set showmatch                   " highlight matching brace
set matchtime=3                 " briefly jump to matching brace
set wrap                        " text wrap
set linebreak                   " prevent wrap inside word
set textwidth=0                 " disable max width of text for wrapping
set wrapmargin=0                " right margin for wrapping
set expandtab                   " tab insert spaces
set tabstop=4                   " number of space characters on tab
set softtabstop=4               " number of space characters on tab
set shiftwidth=4                " number of space characters on indentation
set shiftround                  " round indent to multiple of shiftwidth
set backspace=indent,eol,start  " backspace works like other programs
set autoindent                  " new line will have same indent as current line
set smartindent                 " new line indent will react to syntax/stylem, dependent on autoindent on
match ErrorMsg '\s\+$'          " highlight trailing whitespaces
autocmd GUIEnter * simalt ~x    " start vim/gvim maximized, depends on windows language

"" Search
set ignorecase  " case is ignored
"set smartcase   " override ignorecase when search pattern contains uppercase
set infercase   " case of match is adjusted depending on the typed text
set hlsearch    " search match highlighting
set incsearch   " incremental search

" --------------------------------------------------
" PLUGIN BEHAVIOR
" --------------------------------------------------
let g:indent_guides_start_level=2                       " self-explanatory
let g:indent_guides_guide_size=1                        " self-explanatory
let g:indent_guides_enable_on_vim_startup=1             " self-explanatory
let g:airline#extensions#tabline#enabled=1              " display all session files at top
let g:airline#extensions#tabline#buffer_nr_show = 1     " display buffer number at top
set statusline+=%#warningmsg#                           " SYNTASTIC
set statusline+=%{SyntasticStatuslineFlag()}            " SYNTASTIC
set statusline+=%*                                      " SYNTASTIC
let g:syntastic_always_populate_loc_list = 1            " SYNTASTIC
let g:syntastic_auto_loc_list = 1                       " SYNTASTIC
let g:syntastic_check_on_open = 1                       " SYNTASTIC
let g:syntastic_check_on_wq = 0                         " SYNTASTIC


" --------------------------------------------------
" LEADER & LOCALLEADER
" --------------------------------------------------
let mapleader = '-'
let maplocalleader = '\\'

" --------------------------------------------------
" VIMRC & GVIMRC SHORTCUTS
" --------------------------------------------------
" edit _vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" source _vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" edit _gvimrc
nnoremap <leader>egv :vsplit $MYGVIMRC<cr>
" source _gvimrc
nnoremap <leader>sgv :source $MYGVIMRC<cr>

" --------------------------------------------------
" CUSTOM MAPPINGS
" --------------------------------------------------
"" Insert Mode
" <esc> remap
inoremap jk <esc>
" autoclose parenthesis
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ` ``<esc>i
" console.log
inoremap <leader>log console.log();<esc>hi

"" Normal Mode

"" Visual Mode
" wrap in ...
vnoremap " <esc>a"<esc>`<i"<esc>`>
vnoremap ' <esc>a'<esc>`<i'<esc>`>
vnoremap ( <esc>a)<esc>`<i(<esc>`>
vnoremap [ <esc>a]<esc>`<i[<esc>`>
vnoremap { <esc>a}<esc>`<i{<esc>`>


" --------------------------------------------------
" ABBREVIATIONS
" --------------------------------------------------
iabbrev @@ george_y@outlook.com
iabbrev comcom http://georgeyokoyama.com
iabbrev gsig <cr>-- <cr>George Yokoyama<cr>george_y@outlook.com

"" Common Typos
iabbrev adn and
iabbrev waht what
iabbrev funciton function

" --------------------------------------------------
" RUNTIME PATH
" --------------------------------------------------
set runtimepath+=_gvimrc
