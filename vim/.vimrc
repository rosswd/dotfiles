" VUNDLE SETTINGS BEGIN

set nocompatible  " be iMproved, required
filetype off      " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your Plugin here
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wincent/command-t'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'ajh17/VimCompletesMe'

" All of your Plugins must be added BEFORE the following line
call vundle#end()            " required
filetype plugin indent on    " required

" VUNDLE SETTINGS END

" utf-8 encoding
set encoding=utf-8

" Prevent security exploits in modeline in files
set modelines=0

" Indenting
set expandtab
set shiftwidth=2
set softtabstop=2

" Enable smartindent
set smartindent

" Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=99

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Backups
set nobackup

" Keep 500 lines of command line history
set history=500

" Show the cursor position all the time
set ruler

" Display incomplete commands
set showcmd

" Do incremental Searching
set incsearch

" Don't use Ex mode, use Q for formatting
map Q gq

" Turn on syntax and search highlighting if terminal has colors
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Last line will always have a status line (2=always)
set laststatus=2

" Color Scheme
set background=dark
colorscheme smyck

set showmode

" Show Invisibles
set list

" Mapping to show/hide invisibles (,l)
nmap <leader>l :set list!<CR>

" Use textmate like symbols for tabstops and eol
set listchars=tab:▸\ ,eol:¬

" Disable Movement Keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Make ; do the same thing as :
nnoremap ; :

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=3

" Buffer becomes hidden when it is abandoned. Be careful with :q! or :qa!
" because it's easy to forget to save changes in hidden buffers.
set hidden

" Command line completion (tab) operates in an enhanced mode.
set wildmenu
set wildmode=list:longest

" Use visual bell instead of beeping
set visualbell

" Indicates a fast terminal connection
set ttyfast

" Show the line number
set number

" Set leader from \ to ,
let mapleader = ","

set ignorecase

" See Docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Bigger file size for Command-T Plugin
let g:CommandTMaxFiles=200000
