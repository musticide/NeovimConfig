require("harpoon").setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - 100,
    }
})

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", function()mark.add_file()
print("File Harpooned")
end)
vim.keymap.set("n", "<C-e>", function()ui.toggle_quick_menu()end)

vim.keymap.set("n", "<PageUp>", function()ui.nav_prev()end)
vim.keymap.set("n", "<PageDown>", function()ui.nav_next()end)
