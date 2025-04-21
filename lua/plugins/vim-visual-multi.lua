return {
  "mg979/vim-visual-multi",
  branch = "master", -- make sure you're on the correct branch
  init = function()
    vim.g.VM_maps = {
      ["Select Cursor Down"] = "<A-Down>",
      ["Select Cursor Up"] = "<A-Up>",
    }
  end,
}
