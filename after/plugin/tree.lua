-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle, { desc = "NvimTree: toggle" })
vim.keymap.set("n", "<leader>ff", vim.cmd.NvimTreeFindFile, { desc = "NvimTree: highlight current file" })

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
	update_focused_file = {
		enable = true,
	}
})
