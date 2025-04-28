return {
	"rcarriga/nvim-notify",
	priority = 1000,
	lazy = false,
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("notify").setup({
			-- render options
			-- `"default"`
			-- `"minimal"`
			-- `"simple"`
			-- `"compact"`
			-- `"wrapped-compact"`
			render = "default",
			-- stages options
			-- fade_in_slide_out
			-- fade
			-- slide
			-- static
			stages = "static",
		})
		vim.notify = require("notify")
	end,
}
