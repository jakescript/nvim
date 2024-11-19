-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use 'sainnhe/everforest'
	use 'sainnhe/gruvbox-material'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use 'nvim-tree/nvim-web-devicons'

	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'MunifTanjim/eslint.nvim'

	use 'saadparwaiz1/cmp_luasnip'
	use 'onsails/lspkind.nvim'

	-- Autocomplete
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-path'

	use {
		"L3MON4D3/LuaSnip",
		requires = { "rafamadriz/friendly-snippets" },
		config = function()
			require("luasnip").config.set_config {
				history = true,
			}
		end
	}

	use 'onsails/lspkind.nvim'

	use 'terrortylor/nvim-comment'
	use 'JoosepAlviste/nvim-ts-context-commentstring'

	use 'windwp/nvim-autopairs'
	use 'windwp/nvim-ts-autotag'
	use 'ur4ltz/surround.nvim'
	use {
		"lukas-reineke/indent-blankline.nvim",
		version = "2.20.8",
	}

	use 'kyazdani42/nvim-tree.lua'

  use 'NvChad/nvim-colorizer.lua'
end)

