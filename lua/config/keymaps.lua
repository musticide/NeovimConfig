-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set("n", "J", "mzJ`z")
local map = LazyVim.safe_keymap_set

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "{", "{zz")
map("n", "}", "}zz")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace current word" })
map("n", "<leader>srr", [[:%s/\<<C-r><C-W>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace current WORD" })

-- { "<leader>p", '"_d"+P', mode = "v", desc = "Paste from clipboard (preserve yank)" },
