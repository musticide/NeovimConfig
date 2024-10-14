function ColorMyPencils(color)
	--color = color or "onedark"
	--vim.cmd.colorscheme(color)
	
	vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
    	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    	vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
    	vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
    	vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
    	vim.api.nvim_set_hl(0, "MsgArea", { bg = "NONE" })
    	vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE" })
    	vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
end

ColorMyPencils()
