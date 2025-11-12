return {
	"cbochs/grapple.nvim",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons", lazy = true },
	},
	opts = {
		scope = "git", -- also try out "git_branch"
	},
	event = { "BufReadPost", "BufNewFile" },
	cmd = "Grapple",
	keys = {
		{ "<leader>a", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
		{ "<C-e>", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
		{ "<PageDown>", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
		{ "<PageUp>", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },
		{ "<leader>1", "<cmd>Grapple select index=1<cr>", desc = "Grapple First file" },
		{ "<leader>2", "<cmd>Grapple select index=2<cr>", desc = "Grapple First file" },
		{ "<leader>3", "<cmd>Grapple select index=3<cr>", desc = "Grapple First file" },
		{ "<leader>4", "<cmd>Grapple select index=4<cr>", desc = "Grapple First file" },
		{ "<leader>5", "<cmd>Grapple select index=5<cr>", desc = "Grapple First file" },
		{ "<leader>6", "<cmd>Grapple select index=6<cr>", desc = "Grapple First file" },
		{ "<leader>7", "<cmd>Grapple select index=7<cr>", desc = "Grapple First file" },
		{ "<leader>8", "<cmd>Grapple select index=8<cr>", desc = "Grapple First file" },
		{ "<leader>9", "<cmd>Grapple select index=9<cr>", desc = "Grapple First file" },
	},
}
