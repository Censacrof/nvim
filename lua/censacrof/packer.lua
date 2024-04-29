-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use('navarasu/onedark.nvim')
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('nvim-treesitter/playground')
	use('nvim-lua/plenary.nvim')
	use('ThePrimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use('tpope/vim-surround')


	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'hrsh7th/cmp-cmdline' },

			--signature-helpp
			{ 'hrsh7th/cmp-nvim-lsp-signature-help' },

			-- snippets
			{ 'L3MON4D3/LuaSnip' },   -- snippet engine
			{ 'saadparwaiz1/cmp_luasnip' }, -- for autocompletion
			{ 'rafamadriz/friendly-snippets' } -- useful snippets
		}
	}


	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	use('rbong/vim-flog')

	use('sbdchd/neoformat')

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use('tpope/vim-abolish')

	use("vrischmann/tree-sitter-templ")

	use('lewis6991/gitsigns.nvim')

	use('folke/neodev.nvim')

	use('gabrielpoca/replacer.nvim')

	use('wincent/ferret')

	use('nvim-pack/nvim-spectre', {
		requires = {
			'nvim-lua/plenary.nvim'
		}
	})

	use('numToStr/Comment.nvim')
end)
