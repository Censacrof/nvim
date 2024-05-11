return {
	"rbong/vim-flog",
	lazy = true,
	cmd = { "Flog", "Flogsplit", "Floggit" },
	dependencies = {
		"tpope/vim-fugitive",
	},
	init = function()
		vim.keymap.set("n", "<leader>gv", vim.cmd.Flog, { desc = "Flog: open git graph" })
	end
}
