return {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.gruvbox_material_foreground = "material" -- 'material', 'mix', 'original'

		vim.g.gruvbox_material_enable_bold = 0
		vim.g.gruvbox_material_enable_italic = true
		vim.g.gruvbox_material_disable_italic_comment = 0 -- 0 is true

		vim.g.gruvbox_material_transparent_background = 2 -- 0: opaque, 1: transparent, 2: transparent + transparent UI
		vim.g.gruvbox_material_ui_contrast = "high" -- 'low', 'high'
		vim.g.gruvbox_material_dim_inactive_windows = 0

		vim.g.gruvbox_material_float_style = "bright" --`'bright'`, `'dim'`, `'none'`

		vim.g.gruvbox_material_diagnostic_line_highlight = 0 -- 1 is true
		vim.g.gruvbox_material_diagnostic_text_highlight = 0 -- 1 is true

		vim.cmd.colorscheme("gruvbox-material")

		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
	end,
}
