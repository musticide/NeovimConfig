local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", function()mark.add_file()end)
vim.keymap.set("n", "<C-e>", function()ui.toggle_quick_menu()end)

vim.keymap.set("n", "<C-[>", function()ui.nav_prev()end)
vim.keymap.set("n", "<C-]>", function()ui.nav_next()end)
