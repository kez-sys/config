" Kez's Nvim

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'neovim/nvim-lspconfig'

Plug 'lambdalisue/fern.vim'
Plug 'gruvbox-community/gruvbox'

Plug 'elixir-editors/vim-elixir'

call plug#end()

" Set leader key to space
let mapleader = " "

" Colorscheme
colorscheme gruvbox
highlight Normal guibg=none

