local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>aa", mark.add_file, { desc = "Harpoon: add file" })
vim.keymap.set("n", "<leader>as", ui.toggle_quick_menu, { desc = "Harpoon: toggle quick menu" })

vim.keymap.set("n", "<leader>a1", function() ui.nav_file(1) end, { desc = "Harpoon: go to file 1" })
vim.keymap.set("n", "<leader>a2", function() ui.nav_file(2) end, { desc = "Harpoon: go to file 2" })
vim.keymap.set("n", "<leader>a3", function() ui.nav_file(3) end, { desc = "Harpoon: go to file 3" })
vim.keymap.set("n", "<leader>a4", function() ui.nav_file(4) end, { desc = "Harpoon: go to file 4" })

