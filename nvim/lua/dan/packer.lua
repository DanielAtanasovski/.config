-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', branch = '0.1.x',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Color Scheme
  use { "catppuccin/nvim", as = "catppuccin" }

  -- TreeSitter
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('nvim-treesitter/playground')

  -- UndoTree
  use ('mbbill/undotree')

  -- Git
  use('tpope/vim-fugitive')

  -- Harpoon
  use ('nvim-lua/plenary.nvim')
  use ('ThePrimeagen/harpoon')

  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,},
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'},	  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }

end)
