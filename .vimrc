" Kez's Vim

" Basic Config
syntax on
filetype plugin indent on

set nocompatible
set relativenumber
set nu
set encoding=utf-8
set showmode
set showcmd
set hidden
set ttyfast
set ruler
set backspace=indent,eol,start

set clipboard=unnamedplus
set mouse=a

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set wildmenu
set wildchar=<TAB>
set colorcolumn=80

set splitright splitbelow

" Search
set ignorecase
set smartcase
set gdefault

set incsearch
set showmatch
set hlsearch

" Disable Bold Text
set t_md=

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'junegunn/goyo.vim'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'

call plug#end()

" Set leader key to a comma (;)
let mapleader = " "

" Disable Automatic comment on newline
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Remove search highlight
nnoremap <leader><space> :noh<cr>

" Open Terminal
noremap <leader>t :term<cr>

" Undo tree
nnoremap <F5> :UndotreeToggle<cr>

" Auto delete white space
autocmd BufWritePre * %s/\s\+$//e

" Window navigations
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-h> <C-w>h
inoremap <C-j> <C-w>j
inoremap <C-k> <C-w>k
inoremap <C-l> <C-w>l

" Use leader w and leader s for split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

" Window resizing
nnoremap + <C-w>+
nnoremap - <C-w>-
nnoremap } <C-w>>
nnoremap { <C-w><lt>
nnoremap = <C-w>=

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

"alias ESC with jj
inoremap jj <ESC>
inoremap jk <ESC>

" Indent guide
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Remove search highlight
nnoremap <leader><space> :noh<cr>

" Open Terminal
noremap <leader>;t :term<cr>

" Abort Window
noremap <C-a> :q!<cr>

" Set colorscheme
colorscheme gruvbox
set background=dark

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'



