local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {}) 

vim.keymap.set('n', 'gr', function() builtin.lsp_references() end, { noremap = true, silent = true })

