vim.cmd [[packadd packer.nvim]]

local function configger(pluginType, file)
  local dirs = {
    components = 'components',
    functionality = 'functionality',
    themes = 'themes'
  }
  return string.format('require("%s/%s")', dirs[pluginType], file)
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- dependencies
  use {
    'nvim-lua/plenary.nvim',
    'kyazdani42/nvim-web-devicons',
    'mskelton/termicons.nvim',
    'lewis6991/gitsigns.nvim',
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
    'MunifTanjim/nui.nvim',
    'rktjmp/lush.nvim'
  }

  -- functionality
  use { 'VonHeikemen/lsp-zero.nvim', branch = 'v1.x', config = configger('functionality', 'lsp') }
  use { 'nvim-treesitter/nvim-treesitter', config = configger('functionality', 'treesitter') }
  use { 'lukas-reineke/indent-blankline.nvim', config = configger('functionality', 'editor') }
  use { 'declancm/cinnamon.nvim', config = configger('functionality', 'editor')}
  use { 'folke/trouble.nvim', config = configger('functionality', 'lsp') }
  use { 'SmiteshP/nvim-navic', config = configger('functionality', 'lsp') }
  use { 'windwp/nvim-autopairs', config = configger('functionality', 'editor') }


  -- components
  use { 'nvim-telescope/telescope.nvim', config = configger('components', 'telescope') }
  use { 'nvim-telescope/telescope-file-browser.nvim', config = configger('components', 'telescope') }
  use { 'nvim-neo-tree/neo-tree.nvim', branch = 'v2.x', config = configger('components', 'sidebars') }
  use { 'nvim-lualine/lualine.nvim', config = configger('components', 'statusbar') }

  -- themestuffs
  use { 'EdenEast/nightfox.nvim', config = configger('themes', 'themes'),}
  use { 'folke/lsp-colors.nvim', config = configger('themes', 'themes') }

end)
