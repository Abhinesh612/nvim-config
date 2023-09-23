-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
	'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
	  }

	-- Color Scheme
	use({ 'rose-pine/neovim', as = 'rose-pine' })

	-- Treesitter
	use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
	use('nvim-treesitter/playground')

	-- Undo Tree
	use('mbbill/undotree')

	-- Git
	use('tpope/vim-fugitive')

	-- Terminal
	use('voldikss/vim-floaterm')

	-- LSP
	use('neovim/nvim-lspconfig')

	-- Autocomplete
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	use('hrsh7th/cmp-buffer')
	use('hrsh7th/cmp-path')

	-- Lsp rust 
	use 'simrat39/rust-tools.nvim'

	-- Lua snippets
	use('L3MON4D3/LuaSnip')
	use('saadparwaiz1/cmp_luasnip')
  end)
