local lsp = require("lspconfig")
local rt = require("rust-tools")

local opts = {buffer = 0}

function on_attach()
	vim.keymap.set("n", "th", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "td", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "tD", vim.lsp.buf.type_definition, opts)
	vim.keymap.set("n", "tl", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "te", vim.lsp.diagnostic.goto_next, opts)
	vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)
end
-- Python lsp
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lsp.pyright.setup{
	capabilities = capabilities,
	on_attach = on_attach, 
}

-- Rust Lsp
local opts = {
	tools = {
		runnables = {
		use_telescope = true,
	},
    inlay_hints = {
      auto = true,
      show_parameter_hints = false,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
    },
  },

  server = {
    on_attach = on_attach,
    settings = {
      ["rust-analyzer"] = {
		  cargo = {
			  allFeatures = true,
				},
			},
		},
	},
}

rt.setup(opts)
