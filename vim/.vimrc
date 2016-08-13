" Use Vim settings, rather than Vi settings
" This option must be first because it changes other options
set nocompatible

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Turn off backups
set nobackup

" Show the cursor position, all the time
set ruler

" Do incremental searching
set incsearch

" The last window will always have a status line
set laststatus=2

" utf-8 encoding
set encoding=utf-8

" Prevent security exploits, in modeline, in files
set modelines=0

" Width of a tab character
set tabstop=4

" Determines the amount of space to insert or remove using indentation mode in
" normal mode
set shiftwidth=4

" Fine tune the amount of whitespace to be inserted
set softtabstop=4

" Use spaces instead of tabs
set expandtab

" Disable movement keys
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

" Make ; do the same as :
nnoremap ; :

" Minimal number of screen lines to keep above nand below the cursor
set scrolloff=3

" Use visual bell, instead of beeping
set visualbell

" Indicates a fast terminal connection
set ttyfast

" Show the line number
set number

