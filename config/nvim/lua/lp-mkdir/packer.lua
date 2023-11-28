vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Theme
  use { 
	  'rose-pine/neovim', as = 'rose-pine'
  }

  -- Treesitter
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = function()
		  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		  ts_update()
	  end,
  }

  -- Harpoon
  use('theprimeagen/harpoon')

  -- # Git stuff
  -- Undotree
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  -- Zenmode
  use("folke/zen-mode.nvim")

  -- Trouble
  use({
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
          require("trouble").setup {}
      end
  })

end)
