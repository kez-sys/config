" Kez's Nvim
" Plugins
call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'elixir-editors/vim-elixir'

call plug#end()

" Set leader key to space
let mapleader = " "

" Sets and basic config
syntax on
filetype plugin indent on

set nu
set relativenumber

set nocompatible
set encoding=utf-8
set showmode
set showcmd
set ttyfast
set ruler
set backspace=indent,eol,start
set splitright splitbelow
set noerrorbells
set wildmenu
set wildchar=<TAB>
set signcolumn=yes

" Clipboard
set clipboard=unnamedplus
set mouse=a

" Tab options
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Fix vim startup replace mode
set t_u7=

" Search
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set nohlsearch

" Colorscheme
colorscheme gruvbox
highlight Normal guibg=none

" Cursor
set guicursor=

if &term =~ '^xterm'
  " normal mode
  let &t_EI .= "\<Esc>[0 q"
  " insert mode
  let &t_SI .= "\<Esc>[0 q"
endif

" Auto commands

" Cursor line in insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" Disable Automatic comment on newline
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Auto delete white space
autocmd BufWritePre * %s/\s\+$//e

" Remaps

" Window navigations
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-t> <C-w>T
inoremap <C-h> <C-w>h
inoremap <C-j> <C-w>j
inoremap <C-k> <C-w>k
inoremap <C-l> <C-w>l
inoremap <C-t> <C-w>T

" Window splits
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

" Window resizing
nnoremap + <C-w>+
nnoremap - <C-w>-
nnoremap } <C-w>>
nnoremap { <C-w><lt>
nnoremap = <C-w>=

" View pwd
noremap <silent><nowait> <leader>p :pwd<CR>

" Edit vimrc
noremap <silent><nowait> <leader>V :tabnew $MYVIMRC<CR>

" Telescope
" Find files using Telescope command-line sugar.
" nnoremap <C-p> <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>f <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>enter <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>H <cmd>lua require('telescope.builtin').help_tags()<cr>
