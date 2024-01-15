vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- AI POWERRR!
  use 'github/copilot.vim'

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Git worktree
  use 'ThePrimeagen/git-worktree.nvim'

  use 'neovim/nvim-lspconfig'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
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
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }
  }

  -- Zenmode
  use("folke/zen-mode.nvim")

  -- Trouble
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  })

  -- Matchup
  use({
    'andymass/vim-matchup',
    setup = function()
      -- may set any options here
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end
  })

  -- Autotag
  use("windwp/nvim-ts-autotag")

  -- Prettier
  use {
    'prettier/vim-prettier',
    run = 'yarn install --frozen-lockfile --production',
  }
end)
