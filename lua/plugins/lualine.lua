return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = { left = "|", right = "|" },
				-- section_separators = { left = "", right = "" },
				section_separators = { left = "▒", right = "▒" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = false,
				refresh = {
					statusline = 100,
					tabline = 100,
					winbar = 100,
				},
			},
			sections = {
				lualine_a = { "mode" },
				-- lualine_b = { "branch", "diff", "diagnostics" },
				lualine_b = { "branch", "diagnostics" },
				lualine_c = {
					{
						"filename",
						file_status = true,
						newfile_status = true,
						path = 1,
						symbols = {
							modified = "●",
						},
					},
				},
				lualine_x = {
					{
						"lsp_status",
						ignore_lsp = { "GitHub Copilot" },
					},
				},
				-- lualine_y = { "filetype", "location" },
				lualine_y = { "filetype" },
				lualine_z = {
					{
						"datetime",
						style = "%d-%b|%H:%M",
					},
				},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
