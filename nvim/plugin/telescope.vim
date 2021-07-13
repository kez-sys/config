" Telescope config
nnoremap <C-g> :lua require('telescope.builtin').git_files()<CR>
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>

nnoremap <leader>f <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>enter <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>H <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
