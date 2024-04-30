function ColorMyVim(color)
	--color = color or "catppuccin-mocha"
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

end


function NoColorMyVim(color)
	--color = color or "catppuccin-mocha"
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	--vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

end

ColorMyVim()
