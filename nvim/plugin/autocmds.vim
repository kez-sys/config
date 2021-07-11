" Auto commands

" Cursor line in insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" Disable Automatic comment on newline
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Auto delete white space
autocmd BufWritePre * %s/\s\+$//e
