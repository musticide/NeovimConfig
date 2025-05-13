-- [[ Basic Keymaps ]] See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
vim.keymap.set("n", "<leader>ee", "<cmd>silent !explorer .<CR>", { silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--move and center
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")

--Indent and de-Indent
vim.keymap.set({ "n", "v" }, "<", "V<")

vim.keymap.set("n", "<leader>vwm", function()
	require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
	require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
--vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
--vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-H>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-L>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-J>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-K>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Change buffer Sizes
vim.keymap.set({ "n", "t" }, "<A-J>", "<C-W>-")
vim.keymap.set({ "n", "t" }, "<A-K>", "<C-W>+")
vim.keymap.set({ "n", "t" }, "<A-H>", "<C-W><")
vim.keymap.set({ "n", "t" }, "<A-L>", "<C-W>>")

--Normal mode from terminal
vim.keymap.set({ "t" }, "<Esc>", "<C-Bslash><C-n>")

-- Vertical split
vim.keymap.set("n", "<leader>vp", "<cmd>vsplit<CR><C-w>l")

--Copy the current file path
-- Function to copy the buffer's path relative to the project root
local function copy_buffer_path_from_project_root()
	local project_root = vim.fn.finddir(".git", ".;")
	if project_root == "" then
		print("Project root not found")
		return
	end

	local relative_path = vim.fn.fnamemodify(vim.fn.expand("%"), project_root)
	vim.fn.setreg("+", relative_path)
	print("Copied path: " .. relative_path)
end

-- Keymap to call the function
vim.keymap.set("n", "<leader>fc", function()
	copy_buffer_path_from_project_root()
end, { noremap = true, silent = true })

-- GIT Keymaps
vim.keymap.set("n", "<leader>gs", "<cmd>Git<CR>", { desc = "Open [G]it [S]tatus" })
vim.keymap.set("n", "<leader>gl", "<cmd>diffget //2<CR>", { desc = "Get [G]it [L]ocal" })
vim.keymap.set("n", "<leader>gr", "<cmd>diffget //3<CR>", { desc = "Get [G]it [R]emote" })
