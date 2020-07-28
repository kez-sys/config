" Kez's Vim

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-surround'
Plug 'andrewradev/tagalong.vim'
Plug 'prettier/vim-prettier', { 'do': 'npn install' }
Plug 'preservim/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'KabbAmine/vCoolor.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Set leader key to a comma (;)
let mapleader = " "

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
colorscheme hyper
" set background=dark // new theme

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'

" Emmet
let g:user_emmet_mode='n'
let g:user_emmet_leader_key='.'

" Fzf
let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-y': {lines -> setreg('*', join(lines, "\n"))}}

" Launch fzf with CTRL+P.
nnoremap <silent> <C-p> :FZF -m<CR>

" Map a few common things to do with FZF.
nnoremap <silent> <Leader><Enter> :buffers<CR>
nnoremap <silent> <Leader>l :lines<CR>

" Rg command.
" Example: :Rg myterm -g '*.md'
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \ "rg --column --line-number --no-heading --color=always --smart-case " .
  \ <q-args>, 1, fzf#vim#with_preview(), <bang>0)

" Tagalong
let g:tagalong_verbose = 1

" vCoolor
let g:vcoolor_map = '<leader>h'
let g:vcoolor_lowercase = 1
let g:vcoolor_disable_mappings = 1
let g:vcoolor_custom_picker = 'zenity --title "Zenity" --color-selection --color '

" Nerdtree
let g:NERDTreeShowHidden=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeQuitOnOpen=0

nnoremap <silent> <expr> <Leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
