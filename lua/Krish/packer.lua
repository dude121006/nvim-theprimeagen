-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "catppuccin/nvim",
  as = "catppuccin" ,
--  config = function() 
--	  --vim.cmd('colorscheme catppuccin-mocha'
--	  ) end
  }

  --use( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use {
	  'nvim-treesitter/nvim-treesitter',
	  --vent = 'VimEnter',
	  config = function(_, opts)
		  -- Prefer git instead of curl in order to improve connectivity in some environments
		  require('nvim-treesitter.install').prefer_git = true
		  require('nvim-treesitter.configs').setup(opts)
	  end,
	  requires = {
		  'nvim-treesitter/nvim-treesitter-textobjects', -- Optional: Treesitter textobjects
		  'nvim-treesitter/nvim-treesitter-refactor', -- Optional: Treesitter refactor
		  -- Add any other optional Treesitter modules you want to use here
	  }
  }


  use ('theprimeagen/harpoon')
  use ({ "rose-pine/neovim", as = "rose-pine" })

  use ({
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
  })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  },
    require('mason').setup()


  }

  -- Lua
  use {
	  "folke/which-key.nvim",
  }


end)
