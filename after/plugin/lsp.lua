local lsp = require('lsp-zero')
lsp.preset('recommended')

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'tsserver', 
					  'rust_analyzer',
					  'eslint',
				      'clangd',
					  'cmake',
					  'cssls',
					  'dockerls',
					  'html',
					  'texlab',
					  'pyright',
					  'zls',},

  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})


--local cmp = require('cmp')
--local cmp_select = {behaviour = cmp.SelectBehavior.Select}
--local cmp_mappings = lsp.defaults.cmp_mappings({
--	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
--	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
--	['<C-y>'] = cmp.mapping.confirm({ select = true }),
--	['<S-Space>'] = cmp.mapping.complete(),
--})

--lsp.set_preferences({
--	sign_icons = { }
--})

--lsp.setup_nvim_cmp({
--	mapping = cmp_mappings
--})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}
	
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.lsp.buf.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.lsp.buf.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.lsp.buf.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-n>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

--local lsp = require("lspconfig")
--local rt = require("rust-tools")
--
--local opts = {buffer = 0}
--
--function on_attach()
--	vim.keymap.set("n", "th", vim.lsp.buf.hover, opts)
--	vim.keymap.set("n", "td", vim.lsp.buf.definition, opts)
--	vim.keymap.set("n", "tD", vim.lsp.buf.type_definition, opts)
--	vim.keymap.set("n", "tl", vim.lsp.buf.implementation, opts)
--	vim.keymap.set("n", "te", vim.lsp.diagnostic.goto_next, opts)
--	vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)
--end
---- Python lsp
--local capabilities = require('cmp_nvim_lsp').default_capabilities()
--lsp.pyright.setup{
--	capabilities = capabilities,
--	on_attach = on_attach, 
--}
---- Typescript lsp
--lsp.tsserver.setup{
--	capabilities = capabilities,
--	on_attach = on_attach, 
--}
--
---- Html lsp
--lsp.html.setup{
--	capabilities = capabilities,
--	on_attach = on_attach, 
--}
--
--
--
---- Rust Lsp
--local opts = {
--	tools = {
--		runnables = {
--		use_telescope = true,
--	},
--    inlay_hints = {
--      auto = true,
--      show_parameter_hints = false,
--      parameter_hints_prefix = "",
--      other_hints_prefix = "",
--    },
--  },
--
--  server = {
--    on_attach = on_attach,
--    settings = {
--      ["rust-analyzer"] = {
--		  cargo = {
--			  allFeatures = true,
--				},
--			},
--		},
--	},
--}
--
--rt.setup(opts)
