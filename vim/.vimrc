" Disable weird Vi defaults.
set nocompatible

colorscheme codedark

" Enable filetype plugins
filetype plugin indent on

" Syntax highlighting
syntax enable

" Autoindent on new-line
set autoindent

" Backspace in INSERT mode.
set backspace=indent,eol,start

" Don't scan included files, use .tags instead.
set complete-=i

" Use shiftwidth when using <TAB>.
set smarttab

" Always show window status.
set laststatus=2

" Always display last line.
set display+=lastline

" Show line and column number.
set ruler

" Autocomplete commands.
set wildmenu

" 4 space tabs.
set tabstop=4
set softtabstop=4
set expandtab

" Line numbers.
set number

" Highlight line under cursor.
set cursorline

" Keep 8 lines above or below cursor.
set scrolloff=8

" Disable swap.
set noswapfile

" Ignore case when searching.
set ignorecase

" Don't ignore case if search has a capital letter.
set smartcase

" Set window title by default.
set title

" Redraw only when required.
set lazyredraw

" Match parenthesis.
set showmatch

" Allow recursive path searching
set path+=**

" Map jk to <ESC>.
inoremap jk <esc>
