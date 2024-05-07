require("oil").setup()

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Oil: open parent directory" })
vim.keymap.set("n", "<leader>pv", "<CMD>Oil .<CR>", { desc = "Oil: open working dir" })

