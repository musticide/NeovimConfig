-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

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
ColorMyPencils()
