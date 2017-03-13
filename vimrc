" Disable arrow keys for now
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

set nocompatible                    " required for vundle
filetype off                        " required for vundle

set rtp+=~/.vim/bundle/Vundle.vim   " Include Vundle
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Bundle 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" Powerline
set laststatus=2

" Spacebar leader
let mapleader="\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader><Leader> :NERDTreeToggle<CR>

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1

highlight BadWhitespace ctermbg=red guibg=darkred

let NERDTreeIgnore=['\.pyc$', '\~$']

set foldmethod=indent
set foldlevel=99

colorscheme Tomorrow-Night-Eighties " Color scheme
set background=dark
syntax on                           " Enable syntax processing
set tabstop=4                       " Number of visual spaces per TAB
set softtabstop=4                   " Number of spaces in tab when editing
set expandtab                       " Tabs are spaces
set number                          " Show line numbers
set showcmd                         " Show command in bottom bar 
set cursorline                      " Highlight current line
set wildmenu                        " Visual auto complete for command menu
set lazyredraw                      " Redraw only when necessary
set showmatch                       " Highlight matching [{()}]
set incsearch                       " Search as characters are entered
set runtimepath^=~/.vim/bundle/ctrlp.vim
inoremap jk <ESC>
set spell spelllang=en_us
set encoding=utf-8

au BufRead,BufNewFile *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufRead,BufnewFile *.py,*,pyw,*.c,*.h match BadWhitespace /\s\+$/

" Underline misspelled words
hi clear SpellBad
hi SpellBad cterm=underline

