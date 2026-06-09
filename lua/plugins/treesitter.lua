return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "cpp", "c_sharp", "lua", "glsl", "hlsl" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
