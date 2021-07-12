" Auto commands

" Cursor line in insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" Disable Automatic comment on newline
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Auto delete white space
augroup KJSF
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END
