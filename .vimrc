echo "(>^.^<)"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Filename: .vimrc                                                         "
" Maintainer: Dima Midnight <imagnum.satellite@gmail.com>                    "
"        URL: http://github.com/mike-midnight/.dotfiles                      "
"                                                                            "
"                                                                            "
" Sections:                                                                  "
"   01. General ................. General Vim behavior                       "
"   02. Events .................. General autocmd events                     "
"   03. UI ...................... Colors, fonts, etc.                        "
"   04. Text Formatting/Layout .. Text, tab, indentation related             "
"   05. Mappings ................ Vim mappings section                       "
"   06. Abbreviations ........... Custom abbreviation shortstands            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General                                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible                      " Disables Vi comaptibility (much better!). Must be first, because it changes other options as a side effect.
set hidden                            " hides buffers instead of closing them when. This means thatyou can have unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first.
set history=1000                      " remember more commands and search history
set undolevels=1000                   " use many muchos levels of undo

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Events                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. UI                                                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ruler                             " Show the line and column number of the cursor position
set number
set relativenumber
set numberwidth=2

set laststatus=2                     " last window always has a statusline
set nohlsearch                       " Don't continue to highlight searched phrases.
set incsearch                        " But do highlight as you type your search.

syntax enable
colorscheme default
set t_Co=256                         " enable 256-color mode.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Text Formatting/Layout                                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype indent on                   " activates indenting for files <-- ?
set autoindent                       " alwayis set autoindenting on
set tabstop=4                        " tab spacing
set softtabstop=4                    " unify
set shiftwidth=4                     " number of spaces to use for indenting with '<' and '>'
set shiftwidth=4                     " indent/outdent by 4 columns
set shiftround                       " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab                        " use spaces instead of tab
set smarttab                         " Insert tabs on the start of a line according to shiftwidth, not tabstop

set wrap                             " Wrap lines
set wrapmargin=100                   " Line length
set textwidth=100
set colorcolumn=100                  " code margin indicator + color
highlight ColorColumn ctermbg=magenta

set showmatch                        " set show matching parenthesis
set matchtime=5                      " Tenths of a second to show the matching paren, when 'showmatch' is set

" TODO investigate this block
"--------------------------
set list
set listchars=space:·
highlight WhiteSpaceBol guifg=blue
highlight WhiteSpaceMol guifg=white
match WhiteSpaceMol / /
2match WhiteSpaceBol /^ \+/
"--------------------------

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. Mappings                                                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "\\"
let maplocalleader = "-"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

noremap - ddp
noremap _ ddkP
nnoremap + O<Esc>
nnoremap = o<Esc>k

inoremap jk <Esc>
inoremap <c-u> <Esc>viwU<Esc>
nnoremap <c-u> viwU

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 06. Abbreviations                                                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev conts const
iabbrev cotns const
iabbrev f function
iabbrev fuction function
iabbrev swtich switch
iabbrev swithc switch
iabbrev swithc switch
iabbrev r return
iabbrev retrun return

iabbrev improt import
iabbrev impotr import
iabbrev exprot export
iabbrev exprtr export
iabbrev ed export deafult

iabbrev tehn then
iabbrev calls class
iabbrev claas class
iabbrev extneds extends

iabbrev extedns extends
iabbrev extedns extends
iabbrev Componetn Component

iabbrev @@ imagnum.satellite@gmail.com


" learning

" "TODO"
" 1. wrapper for word
" 2. multiline insert and edit
" 3. multiline identation
" 4 Comment hotkey
" 5 Investigate :soruce saving problem inside .vimrc


