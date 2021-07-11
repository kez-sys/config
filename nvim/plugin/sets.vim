" Sets and basic config

set nu
set relativenumber
" set termguicolors

set nowrap
set nocompatible
set showmode
set showcmd
set ttyfast
set ruler
set splitright splitbelow
set noerrorbells
set wildmenu
set wildchar=<TAB>
set signcolumn=yes
set hidden

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

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Cursor
set guicursor=

if &term =~ '^xterm'
  " normal mode
  let &t_EI .= "\<Esc>[0 q"
  " insert mode
  let &t_SI .= "\<Esc>[0 q"
endif
