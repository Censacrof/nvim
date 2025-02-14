return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		init = function()
			local builtin = require('telescope.builtin')
			local themes = require('telescope.themes')

			vim.keymap.set('n', '<leader>pf', builtin.find_files,
				{ desc = "Telescope: find files (respects .gitignore)" })
			vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = "Telescope: find git files" })
			vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = "Telescope: live grep" })
			vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = "Telescope: find help" })
			vim.keymap.set('n', '<leader>pS', builtin.lsp_workspace_symbols, { desc = "Telescope: find symbol" })

			vim.keymap.set('n', 'gr', function() builtin.lsp_references() end,
				{ desc = "Telescope: find references", noremap = true, silent = true })
		end
	}
}
