" Change mapleader
let mapleader=","
set timeoutlen=2000
" Add pathogen runtime
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Set guifont to a Powerline derivative
if has('gui_macvim')
    "set guifont=Droid\ Sans\ Mono\ for\ Powerline:h10
    "set guifont=Roboto\ Mono\ for\ Powerline:h16
    set guifont=Roboto\ Mono\ Medium\ for\ Powerline:h13
else
    "set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10
    set guifont=Roboto\ Mono\ for\ Powerline\ 16
    "set guifont=Roboto\ Mono\ Medium\ for\ Powerline\ 11
endif

" Set spelling language
set spelllang=en_us
nnoremap <leader>f 1z=
nnoremap <leader>s :set spell!
" Make Vim more useful
set nocompatible
" force 256 colors on terminal
set t_Co=256
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Set color scheme!Â¬
colorscheme candy
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Donâ€™t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
        set undodir=~/.vim/undo
endif

set viminfo+=! " make sure vim history works
map <C-J> <C-W>j<C-W>_ " open and maximize the split below
map <C-K> <C-W>k<C-W>_ " open and maximize the split above
set wmh=0 " reduces splits to a single line

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
hi cursorline ctermbg=NONE guibg=NONE cterm=underline gui=underline
" Make tabs as wide as two spaces
set tabstop=2
" Enable line numbers
set number
" Show â€œinvisibleâ€ characters
set lcs=tab:»·,trail:·,eol:¶,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Respect modeline in files
set modeline
set modelines=4
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Donâ€™t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Donâ€™t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as itâ€™s being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
        let save_cursor = getpos(".")
        let old_query = getreg('/')
        :%s/\s\+$//e
        call setpos('.', save_cursor)
        call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
        " Enable file type detection
        filetype plugin indent on
        " Treat .json files as .js
        autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
        autocmd BufNewFile,BufRead *.xml setfiletype xml syntax=xml
endif

" Add Clojure support
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Add powerline fonts for airline
let g:airline_powerline_fonts = 1
let g:airline_symbols = {}
let g:airline_symbols.space = "\ua0"

" NERDTree
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>

