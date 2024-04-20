local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Telescope: find file" })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Telescope: find git file" })
vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = "Telescope: live grep" })

vim.keymap.set('n', 'gr', function() builtin.lsp_references() end,
	{ desc = "Telescope: find references", noremap = true, silent = true })
