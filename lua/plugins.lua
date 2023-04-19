vim.cmd [[packadd packer.nvim]]

local function config_component(name)
  return string.format("require('components/%s')", name)
end

local function config_themes(name)
  return string.format("require('themes/%s')", name)
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
    },
    after = "nvim-web-devicons",
    config = function()
      require("barbecue").setup()
    end,
  })

  --dependencies

  use({
    'nvim-lua/plenary.nvim',
    'kyazdani42/nvim-web-devicons',
    "nvim-tree/nvim-web-devicons",
    "SmiteshP/nvim-navic"
  })

  -- treesitter

  use({
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({
        with_sync = true
      })
      ts_update()
    end,
  })

  -- window components

  use({
    'romgrk/barbar.nvim',
    requires = {
      'nvim-web-devicons'
    },
    config = config_component('tabs')
  })

  -- sidebars

  use({
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      "nvim-lua/plenary.nvim",
      "mskelton/termicons.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = config_component('sidebars')
  })

  -- lsp

  use({
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    },
    config = config_component('lsp')
  })

  -- finder

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = {
      'nvim-telescope/telescope-file-browser.nvim',
      'nvim-lua/plenary.nvim'
    },
    config = config_component('finder')
  }

  -- status bar 

  use({
    'nvim-lualine/lualine.nvim',
    config = config_component('statusbar')
  })

  -- editor functionality

  use({
    'windwp/nvim-autopairs',
    "lukas-reineke/indent-blankline.nvim",
    config = function() require('nvim-autopairs').setup {} end
  })

  use {
    "mcchrish/zenbones.nvim",
    requires = "rktjmp/lush.nvim",
    config = config_themes('themes')
}

  use 'mskelton/termicons.nvim'
  use 'github/copilot.vim'
end)
