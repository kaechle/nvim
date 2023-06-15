vim.cmd [[packadd packer.nvim]]

local function config_component(name)
  return string.format('require("components/%s")', name)
end

local function config_themes(name)
  return string.format('require("themes/%s")', name)
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  --dependencies
  use {
    'nvim-lua/plenary.nvim',
    'kyazdani42/nvim-web-devicons',
    'nvim-tree/nvim-web-devicons',
    'SmiteshP/nvim-navic',
    'mskelton/termicons.nvim'
  }
  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    config = config_component('treesitter'),
    run = function()
      local ts_update = require('nvim-treesitter.install').update({
        with_sync = true,
      })
      ts_update()
    end,
  }

  -- lsp
  use {
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
  }

  --  components
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = {
      'nvim-telescope/telescope-file-browser.nvim',
    },
    config = config_component('finder')
  }

  use 'lewis6991/gitsigns.nvim'

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "MunifTanjim/nui.nvim",
    },
    config = config_component('sidebars')
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = config_component('statusbar')
  }

  -- editor functionality
  use { 'lukas-reineke/indent-blankline.nvim' }

  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end
  }

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = config_themes('themes')
  })


  use({
    'ramojus/mellifluous.nvim',
    requires = { 'rktjmp/lush.nvim' },
    config = config_themes('themes'),
  })

  use {
    'sam4llis/nvim-tundra',
    config = config_themes('themes')
  }

  use {
    'mcchrish/zenbones.nvim',
    requires = 'rktjmp/lush.nvim',
    config = config_themes('themes')
  }

  use 'github/copilot.vim'

end)
