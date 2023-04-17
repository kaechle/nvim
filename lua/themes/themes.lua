local palettes = {
  nordfox = {
    bg0 = '#1c1e1f',
    bg1 = '#252627',
    bg2 = '#313131',
    bg3 = '#444546',
    bg4 = '#424249',
    fg0 = '#49494f',
    fg1 = '#606060',
    fg2 = '#a2a2a7',
    fg3 = '#cdccce',
    comment = '#43434b',
    sel0 = '#252a32',
    sel1 = '#9fc0f9',
    black = { base = '#313132', bright = '#505254', dim = '#313132' },
    red = { base = '#b74d48', bright = '#eb8773', dim = '#b74d48' },
    green = { base = '#77ab99', bright = '#98d2bd', dim = '#59a999' },
    yellow = { base = '#ccb998', bright = '#ccb998', dim = '#ccb998' },
    blue = { base = '#7ea1b3', bright = '#719abd', dim = '#7ea1b3' },
    magenta = { base = '#bd8d98', bright = '#bd8d98', dim = '#b296ba' },
    cyan = { base = '#68b8c3', bright = '#509cee', dim = '#68b8c3' },
    white = { base = '#a2a2a6', bright = '#dddddd', dim = '#e5e5e5' },
    orange = { base = '#b26c37', bright = '#b26c37', dim = '#b26c37' },
    pink = { base = '#c26179', bright = '#c26179', dim = '#505355' }
  }
}

local groups = {
  nordfox = {
    Normal = { fg = 'fg2', bg = 'NONE' },
    NormalNC = { fg = 'fg2', bg = 'NONE' },
    VertSplit = { fg = 'bg2', bg = 'NONE' },
    IndentBlanklineChar = { fg = 'bg1', bg = 'NONE' },
    EndOfBuffer = { fg = 'bg0', bg = 'NONE' },
    Whitespace = { fg = 'bg0', bg = 'NONE' },
    NonText = { fg = 'bg0', bg = 'NONE' },
    LineNr = { fg = 'fg0', bg = 'NONE' },
    CursorLineNr = { fg = 'fg2', bg = 'NONE' },
    CursorLine = { bg = 'NONE' },
    Folded = { fg = 'fg2', bg = 'bg0' },
    Pmenu = { fg = 'fg2', bg = 'bg1' },

    BufferFill = { bg = 'bg2' },
    BufferDefaultCurrent = { bg = 'NONE' },
    BufferDefaultVisible = { bg = 'NONE' },
    BufferDefaultInactive = { bg = 'NONE' },

    StatusLine = { fg = 'fg2', bg = 'NONE' },
    StatusLineNC = { fg = 'NONE', bg = 'NONE' },

    NeoTreeNormal = { fg = 'fg2', bg = 'NONE' },
    NeoTreeNormalNC = { fg = 'fg2', bg = 'NONE' },
    NeoTreeVertSplit = { fg = 'bg3', bg = 'NONE' },
    NeoTreeDirectoryName = { fg = 'fg2' },
    NeoTreeFileName = { fg = 'fg2' },
    NeoTreeDirectoryIcon = { fg = 'palette.cyan.bright' },
    NeoTreeRootName = { fg = 'fg2', gui='bold' },
    NeoTreeTabActive = { fg = 'fg3', bg = 'NONE' },
    NeoTreeTabInactive = { fg = 'fg0', bg = 'NONE' },
    NeoTreeTabSeparatorActive = { fg = 'bg1', bg = 'NONE' },
    NeoTreeTabSeparatorInactive = { fg = 'bg1', bg = 'NONE' },

    Cursor  = { fg = '#242a31', bg = '#9fc0fa', gui=bold },
    MatchParen = { fg = '#639be7', bg = '#252a31', gui=bold },

    Special = { fg = 'fg2' },
    Constant = { fg = 'fg3' },
    Type = { fg = 'fg3' },
    Operator = { fg = 'palette.blue.bright' },
    Function = { fg = 'palette.cyan.base' },
    Method = { fg = 'palette.green.dim' },
    Number = { fg = 'palette.pink.base' },
    Boolean = { fg = 'palette.orange.bright' },
    String = { fg = 'palette.yellow.base' },
  }
}

require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = true,               -- Disable setting background
    terminal_colors = true,            -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,              -- Non focused panes set to alternative background
    module_default = true,             -- Default enable value for modules
    colorblind = {
      enable = false,                  -- Enable colorblind support
      simulate_only = false,           -- Only show simulated colorblind colors and not diff shifted
      severity = {
        protan = 0,                    -- Severity [0,1] for protan (red)
        deutan = 0,                    -- Severity [0,1] for deutan (green)
        tritan = 0,                    -- Severity [0,1] for tritan (blue)
      },
    },
    styles = {
      comments = "italic", -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {
      -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = { -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = palettes,
  specs = {},
  groups = groups
})

local nvim_web_devicons = require "nvim-web-devicons"
local current_icons = nvim_web_devicons.get_icons()
local new_icons = {}

for key, icon in pairs(current_icons) do
  icon.color = "#6a6b6f"
  new_icons[key] = icon
end

nvim_web_devicons.set_icon(new_icons)

require('github-theme').setup()

-- setup must be called before loading
vim.cmd("colorscheme nordfox")
