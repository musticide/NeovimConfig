local opts = ({
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = 'editor',
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.2,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = .2, },
      vertical = { location = "rightbelow", split_ratio = .5 },
    }
  },
  behavior = {
    autoclose_on_quit = {
      enabled = false,
      confirm = true,
    },
    close_on_exit = true,
    auto_insert = false,
  },
})

require("nvterm").setup(opts)

vim.keymap.set("n", "<leader>t", function()require("nvterm.terminal").new "horizontal"end)
