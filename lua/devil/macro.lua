function format_text()
	local start_line = vim.fn.line("'<")
	local end_line = vim.fn.line("'>")
	
	local lines = vim.fn.getline(start_line, end_line)
	local text = table.concat(lines, "\n")
	
	local temp_file = "/tmp/format_text.txt"
	local file = io.open(temp_file, "w")
	file.write(text)
	file.close()

	local output = vim.fn.system("column -t -s = -o = " .. tmp_file)
	vim.fn.setline(start_line, vim.split(output, "\n"))

	vim.cmd("normal! g`>")
end

vim.api.nvim_set_keymap('x', '<leader>x', ':lua format_text()<CR>', {noremap=true, silent=true})
