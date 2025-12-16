return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	config = function(_, opts)
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			--[[ background = { -- :h background
				light = "latte",
				dark = "mocha",
			}, ]]
			transparent_background = true, -- disables setting the background color.
			float = {
				transparent = true, -- enable transparent floating windows
				solid = true, -- use solid styling for floating windows, see |winborder|
			},
			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
			term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			no_underline = false, -- Force no underline
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" }, -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = { "italic" },
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
				-- miscs = {}, -- Uncomment to turn off hard-coded styles
			},
			lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
					ok = { "italic" },
				},
				underlines = {
					errors = { "underline" },
					hints = { "underline" },
					warnings = { "underline" },
					information = { "underline" },
					ok = { "underline" },
				},
				inlay_hints = {
					background = true,
				},
			},
			color_overrides = {},
			custom_highlights = {},
			default_integrations = true,
			auto_integrations = false,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
			},
		})

		-- setup must be called before loading
		vim.cmd.colorscheme("catppuccin")
	end,
}
--[[ return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
		transparent = true, -- Enable this to disable setting the background color
		terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim

		styles = {
			-- Style to be applied to different syntax groups
			-- Value is any valid attr-list value for `:help nvim_set_hl`
			comments = { italic = true },
			keywords = { bold = true },
			functions = {},
			variables = {},
			-- Background styles. Can be "dark", "transparent" or "normal"
			sidebars = "transparent", -- style for sidebars, see below
			floats = "transparent", -- style for floating windows
		},
	},
	config = function(_, opts)
		require("tokyonight").setup(opts)

		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
		vim.cmd.colorscheme("tokyonight")
		-- vim.cmd.colorscheme("tokyonight-night")
		-- vim.cmd.colorscheme("tokyonight-storm")
		-- vim.cmd.colorscheme("tokyonight-moon")
	end,
} ]]
--[[ return {
	"navarasu/onedark.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("onedark").setup({
			style = "cool", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
			transparent = true, -- Show/hide background
			term_colors = true, -- Change terminal color as per the selected theme style
			ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
			cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

			-- toggle theme style ---
			toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
			toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

			-- Change code style ---
			-- Options are italic, bold, underline, none
			-- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
			code_style = {
				comments = "italic",
				keywords = "none",
				functions = "none",
				strings = "none",
				variables = "none",
			},

			-- Lualine options --
			lualine = {
				transparent = true, -- lualine center bar transparency
			},

			-- Custom Highlights --
			colors = {}, -- Override default colors
			highlights = {}, -- Override highlight groups

			-- Plugins Config --
			diagnostics = {
				darker = true, -- darker colors for diagnostic
				undercurl = true, -- use undercurl instead of underline for diagnostics
				background = true, -- use background color for virtual text
			},
		})
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
		require("onedark").load()
	end,
} ]]
--[[ return {
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
		vim.g.gruvbox_material_diagnostic_virtual_text = "colored" --`'grey'`, `'colored'`, `'highlighted'`

		vim.cmd.colorscheme("gruvbox-material")

		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
	end,
} ]]
