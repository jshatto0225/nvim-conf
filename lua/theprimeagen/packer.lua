-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'sainnhe/gruvbox-material'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "nvim-treesitter/playground"

  use 'hoob3rt/lualine.nvim'

  use {
    "svrana/neosolarized.nvim",
    requires = { "tjdevries/colorbuddy.nvim" }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
  })

  use({'folke/tokyonight.nvim'})
  use { "catppuccin/nvim", as = "catppuccin" }

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

  use {
    'maxmx03/solarized.nvim',
  }

  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end
  }

  use("theprimeagen/harpoon")

  --use {
  --    'VonHeikemen/lsp-zero.nvim',
  --    branch = 'v1.x',
  --    requires = {
  --  	  -- LSP Support
  --  	  {'neovim/nvim-lspconfig'},
  --  	  {'williamboman/mason.nvim'},
  --  	  {'williamboman/mason-lspconfig.nvim'},

  --  	  -- Autocompletion
  --  	  {'hrsh7th/nvim-cmp'},
  --  	  {'hrsh7th/cmp-buffer'},
  --  	  {'hrsh7th/cmp-path'},
  --  	  {'saadparwaiz1/cmp_luasnip'},
  --  	  {'hrsh7th/cmp-nvim-lsp'},
  --  	  {'hrsh7th/cmp-nvim-lua'},

  --  	  -- Snippets
  --  	  {'L3MON4D3/LuaSnip'},
  --  	  {'rafamadriz/friendly-snippets'},
  --    }
  --}

  use { "CreaturePhil/vim-handmade-hero" }
end)

