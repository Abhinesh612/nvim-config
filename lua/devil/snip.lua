local ls = require("luasnip")

require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/snippets"})

ls.config.set_config({
	history = true,
	updateevents = "TextChanged, TextChangedI",
	enable_autosnippets = true,
	ext_opts = {
		[require("luasnip.util.types").choiceNode] = {
			active = {
				virt_text = {{"@", "rose-pine"}}
			},
		},
	},
})


vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
