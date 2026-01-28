return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- Default options:
		require("kanagawa").setup({
			compile = false, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = true, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			colors = { -- add/modify theme and palette colors
				palette = {},
				theme = {
					-- wave = {},
					-- lotus = {},
					-- dragon = {},
					all = {
						ui = {
							bg_gutter = "none",
							bg = "none",
						},
					},
				},
			},
			overrides = function(colors) -- add/modify highlights
				local theme = colors.theme
				return {
					-- NormalFloat = { bg = "none" },
					-- FloatBorder = { bg = "none" },
					-- FloatTitle = { bg = "none" },

					-- -- Save an hlgroup with dark background and dimmed foreground
					-- -- so that you can use it where your still want darker windows.
					-- -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
					-- -- NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

					-- -- Popular plugins that open floats will link to NormalFloat by default;
					-- -- set their background accordingly if you wish to keep them dark and borderless
					-- LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
					-- MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

					-- Borderless Telescope
					TelescopeTitle = { fg = theme.ui.special, bold = true },
					TelescopePromptNormal = { bg = theme.ui.bg_p1 },
					TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
					TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
					TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
					TelescopePreviewNormal = { bg = theme.ui.bg_dim },
					TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
				}
			end,
			theme = "dragon", -- Load "wave" theme values: wave dragon lotus
			-- background = { -- map the value of 'background' option to a theme
			-- 	dark = "wave", -- try "dragon" !
			-- 	light = "lotus",
			-- },
		})

		-- setup must be called before loading
		-- vim.cmd("colorscheme kanagawa")
		vim.cmd.colorscheme("kanagawa-dragon")
	end,
}
-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {
-- 		style = "night",
-- 		transparent = true,
-- 		styles = {
-- 			-- Style to be applied to different syntax groups
-- 			-- Value is any valid attr-list value for `:help nvim_set_hl`
-- 			comments = { italic = true },
-- 			keywords = { italic = true },
-- 			functions = {},
-- 			variables = {},
-- 			-- Background styles. Can be "dark", "transparent" or "normal"
-- 			sidebars = "dark", -- style for sidebars, see below
-- 			floats = "dark", -- style for floating windows
-- 		},
-- 	},
-- 	config = function()
-- 		vim.cmd.colorscheme("tokyonight-night")
-- 	end,
-- }
-- return {
-- 	"shaunsingh/nord.nvim",
-- 	name = "nord",
-- 	priority = 1000,

-- 	config = function()
-- 		vim.g.nord_contrast = true
-- 		vim.g.nord_borders = true
-- 		vim.g.nord_disable_background = true
-- 		vim.g.nord_italic = true
-- 		vim.g.nord_uniform_diff_background = false
-- 		vim.g.nord_bold = true

-- 		-- Load the colorscheme
-- 		require("nord").set()
-- 		vim.cmd.colorscheme("nord")

-- 		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- 		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
-- 		vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
-- 	end,
-- }

-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,

-- 	config = function(_, opts)
-- 		require("catppuccin").setup({
-- 			flavour = "mocha", -- latte, frappe, macchiato, mocha
-- 			--[[ background = { -- :h background
-- 				light = "latte",
-- 				dark = "mocha",
-- 			}, ]]
-- 			transparent_background = true, -- disables setting the background color.
-- 			float = {
-- 				transparent = true, -- enable transparent floating windows
-- 				solid = true, -- use Zsolid styling for floating windows, see |winborder|
-- 			},
-- 			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
-- 			term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
-- 			dim_inactive = {
-- 				enabled = false, -- dims the background color of inactive window
-- 				shade = "dark",
-- 				percentage = 0.15, -- percentage of the shade to apply to the inactive window
-- 			},
-- 			no_italic = false, -- Force no italic
-- 			no_bold = false, -- Force no bold
-- 			no_underline = false, -- Force no underline
-- 			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
-- 				comments = { "italic" }, -- Change the style of comments
-- 				conditionals = { "italic" },
-- 				loops = {},
-- 				functions = {},
-- 				keywords = { "italic" },
-- 				strings = {},
-- 				variables = {},
-- 				numbers = {},
-- 				booleans = {},
-- 				properties = {},
-- 				types = {},
-- 				operators = {},
-- 				-- miscs = {}, -- Uncomment to turn off hard-coded styles
-- 			},
-- 			lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
-- 				virtual_text = {
-- 					errors = { "italic" },
-- 					hints = { "italic" },
-- 					warnings = { "italic" },
-- 					information = { "italic" },
-- 					ok = { "italic" },
-- 				},
-- 				underlines = {
-- 					errors = { "underline" },
-- 					hints = { "underline" },
-- 					warnings = { "underline" },
-- 					information = { "underline" },
-- 					ok = { "underline" },
-- 				},
-- 				inlay_hints = {
-- 					background = true,
-- 				},
-- 			},
-- 			color_overrides = {},
-- 			custom_highlights = {},
-- 			default_integrations = true,
-- 			auto_integrations = false,
-- 			integrations = {
-- 				cmp = true,
-- 				gitsigns = true,
-- 				nvimtree = true,
-- 				notify = false,
-- 				mini = {
-- 					enabled = true,
-- 					indentscope_color = "",
-- 				},
-- 				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
-- 			},
-- 		})

-- 		-- setup must be called before loading
-- 		vim.cmd.colorscheme("catppuccin")
-- 	end,
-- }
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
