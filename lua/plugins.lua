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
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    after = "nvim-web-devicons",     -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  })

  --dependencies

  use 'nvim-lua/plenary.nvim'
  use 'kyazdani42/nvim-web-devicons'

  use({
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  })

  -- window components

  use({
    'xiyaowong/transparent.nvim',
    requires = {},
    config = config_component('window')
  })

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

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = {
      'nvim-telescope/telescope-file-browser.nvim',
      'nvim-lua/plenary.nvim'
    },
    config = config_component('finder')
  }

  use({
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    },
    config = config_component('statusbar')
  })

  use({
    'Pocco81/true-zen.nvim',
    config = config_component('zen')
  })

  use "lukas-reineke/indent-blankline.nvim"



use({
  'windwp/nvim-autopairs',
  config = function() require('nvim-autopairs').setup {} end
})

-- use {
--   'karb94/neoscroll.nvim',
--   config = config_component('window')
-- }

use 'mskelton/termicons.nvim'

use({
  'EdenEast/nightfox.nvim',
  config = config_themes('themes')
})

use ({
  'projekt0n/github-nvim-theme',
  branch = '0.0.x',
  config = config_themes('themes')
})

use 'github/copilot.vim'
end)
