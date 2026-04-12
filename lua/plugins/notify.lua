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
			render = "wrapped-compact",
			-- stages options
			-- fade_in_slide_out
			-- fade
			-- slide
			-- static
			stages = "fade",
			background_colour = "#000000",
		})
		vim.notify = require("notify")
	end,
}
