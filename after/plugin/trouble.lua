require("trouble").setup({
	focus = true
})

vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

-- use this when V3 comes out
-- vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
--
-- vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
-- 	{ desc = "Buffer Diagnostics (Trouble)" })
--
-- vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
--
-- vim.keymap.set("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
-- 	{ desc = "LSP Definitions / references / ... (Trouble)" })
--
-- vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
--
-- vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
