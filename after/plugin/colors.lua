function colorMyPencils(color)
	--color = color or "rose-pine"
	color = color or "tokyonight"
	-- color = color or "kanagawa-dragon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

function colorMyComments(color)
	local default_color = 6516134 
	local comment_color = vim.api.nvim_get_hl_by_name("Comment", true).foreground
	if comment_color ==  default_color then
		local color = color or "red"
		vim.api.nvim_set_hl(0, "Comment", { fg = color })
	else
		vim.api.nvim_set_hl(0, "Comment", { fg = default_color })
	end
end


colorMyPencils()
vim.keymap.set("n", "tc", function() colorMyComments() end)
