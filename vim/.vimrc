
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
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added BEFORE the following line
call vundle#end()            " required
filetype plugin indent on    " required

" VUNDLE SETTINGS END

" Indenting
set expandtab
set shiftwidth=2
set softtabstop=2
"set tabstop=4

syntax on

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Turn off backups
"set nobackup

" Turn on backups (for cron)
set backupcopy=yes

" Keep 500 lines of command line history
set history=500

" Show the cursor position all the time
set ruler

" Display incomplete commands
set showcmd

" Do incremental searching
set incsearch

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
  \ | wincmd p | diffthis
endif

" The last window will always have a status line
" 2 sets it to always
set laststatus=2

" utf-8 encoding
set encoding=utf-8

" Prevent security exploits in modeline in files
set modelines=0

" Color Scheme
set background=dark
colorscheme smyck

set showmode

" Show invisibles
set list

" folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=99

" Mapping to toggle show invisibles/hide invisibles
" Note: leader is \, so this is \l
nmap <leader>l :set list!<CR>

" Use same symbols as textmate for tabstops and EOL
set listchars=tab:▸\ ,eol:¬

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

" Highlight the screen line of the cursor
" http://vim.wikia.com/wiki/Highlight_current_line
"set cursorline
"hi CursorLine cterm=NONE ctermbg=Blue ctermfg=white guibg=darkgrey guifg=white
"hi CursorColumn cterm=NONE ctermbg=black ctermfg=white guibg=darkgrey guifg=white
"nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

"hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white

" Indicates a fast terminal connection
set ttyfast

" Show the line number relative to the line width of the cursor
"set relativenumber

" Show the line number
set number

" Set leader from \ to ,
let mapleader = ","

set ignorecase

" Enable smartindent
set smartindent

" See Docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Flag unnecessary whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Bigger file size for Command-T Plugin
let g:CommandTMaxFiles=200000
