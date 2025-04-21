function ColorMyPencils()
  vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "MsgArea", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
end
-- function TokyoNight()
-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = true,
--     opts = {
--       style = "storm",
--       transparent = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--     },
--   },
--
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "tokyonight-storm",
--     },
--   },
-- }
-- end

-- function Kanagawa()
--   return {
--     "rebelot/kanagawa.nvim",
--     lazy = true,
--     opts = {
--       compile = false, -- enable compiling the colorscheme
--       undercurl = true, -- enable undercurls
--       commentStyle = { italic = true },
--       functionStyle = {},
--       keywordStyle = { italic = true },
--       statementStyle = { bold = true },
--       typeStyle = {},
--       transparent = true,
--       dimInactive = true, -- dim inactive window `:h hl-NormalNC`
--       terminalColors = true, -- define vim.g.terminal_color_{0,17}
--
--       overrides = function(colors) -- add/modify highlights
--         local theme = colors.theme
--         return {
--           NormalFloat = { bg = "none" },
--           FloatBorder = { bg = "none" },
--           FloatTitle = { bg = "none" },
--
--           -- Save an hlgroup with dark background and dimmed foreground
--           -- so that you can use it where your still want darker windows.
--           -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
--           NormalDark = { fg = theme.ui.fg_dim, bg = "none" },
--
--           -- Popular plugins that open floats will link to NormalFloat by default;
--           -- set their background accordingly if you wish to keep them dark and borderless
--           -- LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
--           LazyNormal = { bg = "none", fg = theme.ui.fg_dim },
--           MasonNormal = { bg = "none", fg = theme.ui.fg_dim },
--         }
--       end,
--       theme = "dragon", -- "wave", "dragon", "lotus"
--       background = { -- map the value of 'background' option to a theme
--       },
--     },
--     {
--       "LazyVim/LazyVim",
--       opts = {
--         colorscheme = "kanagawa-dragon",
--       },
--     },
--   }
-- end
--
return {
  {
    "navarasu/onedark.nvim",
    lazy = true,
    opts = {
      -- Main options --
      style = "warmer", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = true, -- Show/hide background
      term_colors = true, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

      -- toggle theme style ---
      toggle_style_key = "<leader>ots", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

      -- Change code style ---
      -- Options are italic, bold, underline, none
      -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
      code_style = {
        comments = "italic",
        keywords = "italic",
        functions = "none",
        strings = "none",
        variables = "bold",
      },

      -- Lualine options --
      lualine = {
        transparent = false, -- lualine center bar transparency
      },

      -- Custom Highlights --
      -- colors = {}, -- Override default colors
      highlights = {
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
      }, -- Override highlight groups

      -- Plugins Config --
      diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true, -- use undercurl instead of underline for diagnostics
        background = false, -- use background color for virtual text
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
      highlight = {},
    },
    -- ColorMyPencils(),
  },
}
