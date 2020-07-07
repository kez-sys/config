" Kez's Vim

" Plugged (Manager)

call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'mileszs/ack.vim'
" Plug 'epmatsw/ag.vim'
" Plug '~/.fzf'
" Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'

call plug#end()

" Set leader key to a comma (;)
let mapleader = ";"

"alias ESC with jj
inoremap jj <ESC>
inoremap jk <ESC>

" Basic Config
filetype plugin indent on
syntax on

set nocompatible
set relativenumber
set encoding=utf-8
set showmode
set showcmd
set hidden
set ttyfast
set ruler
set backspace=indent,eol,start

set clipboard=unnamedplus
set mouse=a

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set wildmenu
set wildchar=<TAB>

" Disable Automatic comment on newline
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Split open right and below
set splitright splitbelow

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

" Indent guide
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Search
set ignorecase
set smartcase
set gdefault

" Highlight search results
set incsearch
set showmatch
set hlsearch

" Remove search highlight
nnoremap <leader><space> :noh<cr>

" Open Terminal
noremap <leader>;t :term<cr>

" Abort Window
noremap <C-a> :q!<cr>


" Set colorscheme
colorscheme badwolf


" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'

" Disable Bold Text
set t_md=

" fzf stuff - removed until wsl update

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

nnoremap <silent> <C-p> :FZF <CR>

nmap <silent> <C-f> :Files!<CR>
nnoremap <Leader><Enter> :Buffers<CR>
nnoremap <Leader>l :Lines<CR>
nmap <leader>f :Commands<CR>

" EPlug 'vim-airline/vim-airline'xample: :Rg myterm -g '*.md'
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case " . <q-args>, 1, <bang>0)

" Ack.vim
" nnoremap <leader>a :Ack
" let g:ackprg = 'ag --nogroup --nocolor --column'

" The Silver Searcher
" if executable('ag')
  " Use ag over grep
"   set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
"   let g:ctrlp_use_caching = 0
" endif
