" Telescope config

" Find files
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <C-o> :lua require('telescope.builtin').find_files()<cr>

" Find text
nnoremap <leader>f :lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

" Extras
nnoremap <leader><CR> :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>H :lua require('telescope.builtin').help_tags()<cr>

" Future custom
" nnoremap <leader>vrc :lua require('kjsf.telescope').search_dotfiles()<CR>

" Future git stuff
" nnoremap <leader>gc :lua require('theprimeagen.telescope').git_branches()<CR>
" nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
" nnoremap <leader>gm :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>
