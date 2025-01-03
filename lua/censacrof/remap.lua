vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Toggle file explorer NvimTree(NvimTreenetrw)" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Copy to system clipboard" })

vim.keymap.set("n", "Q", "<nop>")

local openDiagnostic = function () vim.diagnostic.open_float() end
vim.keymap.set("n", "<C-h>", openDiagnostic, { desc = "Open diagnostic" })
vim.keymap.set("i", "<C-h>", openDiagnostic, { desc = "Open diagnostic" })

-- case insensitive search by default, use ? for case sensitive
vim.keymap.set("n", "/", "/\\c")
vim.keymap.set("n", "?", "/")

-- enter norma mode with jk
vim.keymap.set("i", "jk", "<esc>")

-- toggle relative line numbers
vim.keymap.set("n", "<C-L><C-L>", ":set relativenumber!<CR>", { desc = "Toggle relative line numbers" })
