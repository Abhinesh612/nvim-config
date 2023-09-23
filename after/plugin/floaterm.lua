-- vim.keymap.set("n", "<leader>tc", vim.cmd.FloatermNew)
vim.keymap.set("n", "<leader>tc", ":FloatermNew --width=0.7 -wintype=float<CR>")
vim.keymap.set("n", "<leader>tt", vim.cmd.FloatermToggle)
vim.keymap.set("n", "<leader>tn", vim.cmd.FloatermPrev)
vim.keymap.set("n", "<leader>tp", vim.cmd.FloatermNext)

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true, silent = true})
