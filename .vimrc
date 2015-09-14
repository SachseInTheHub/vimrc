set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" A parser for a condensed HTML format
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" rails.vim
Plugin 'tpope/vim-rails.git'
" Enhanced javascript syntax file for Vim
Plugin 'jelera/vim-javascript-syntax'
" Vastly improved Javascript indentation and syntax support in Vim.
Plugin 'pangloss/vim-javascript'
" auto-completion for quotes, parens, brackets, etc.
Plugin 'Raimondi/delimitMate'
" nerdtree
Plugin 'scrooloose/nerdtree'
" Yet Another Indent Finder
Plugin 'Raimondi/YAIFA'
" search files :CtrlP
Plugin 'kien/ctrlp.vim'
" airline powerbar
Plugin 'bling/vim-airline'
" utility functions and commands for programming in Vim.
Plugin 'L9'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

au FileType javascript call JavaScriptFold()

set t_Co=256
syntax on
set background=dark
colorscheme distinguished 
set tabstop=2
set shiftwidth=2
set number
set mouse=a
set laststatus=2 " always display status line
set autoindent 
set incsearch
set clipboard=unnamed

" NerdTree config
autocmd vimenter * NERDTree
nmap <silent> <C-E> :NERDTreeToggle<CR>
" Close if the only thing left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" airline config
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'

" buffer config
nnoremap <C-n> :CtrlPBuffer<CR>
