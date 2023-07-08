require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = true,     -- Disable setting background
    terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,    -- Non focused panes set to alternative background
    module_default = false,   -- Default enable value for modules
    colorblind = {
      enable = false,        -- Enable colorblind support
      simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
      severity = {
        protan = 0,          -- Severity [0,1] for protan (red)
        deutan = 0,          -- Severity [0,1] for deutan (green)
        tritan = 0,          -- Severity [0,1] for tritan (blue)
      },
    },
    styles = {               -- Style to be applied to different syntax groups
      comments = 'italic',     -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "italic",
      functions = "NONE",
      keywords = 'NONE',
      numbers = "NONE",
      operators = "NONE",
      strings = "altfont",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {}, 
  specs = {},
  groups = {},
})

vim.cmd("colorscheme nordfox")

--vim.api.nvim_set_hl(0, "Keyword", { fg='#ffa589' })
vim.api.nvim_set_hl(0, 'Normal', { fg='#dcdcdd', bg='none' })
vim.api.nvim_set_hl(0, 'VertSplit', { fg='#282828' })
vim.api.nvim_set_hl(0, 'NonText', { fg='#202020' })
vim.api.nvim_set_hl(0, 'CursorLine', { bg='none' })
vim.api.nvim_set_hl(0, 'IndentBlankLineChar', { fg='#242424' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg='#999999' })
vim.api.nvim_set_hl(0, 'LineNr', { fg='#4a4a4a', bg='none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg='none' })
vim.api.nvim_set_hl(0, 'NeoTreeRootName', { fg='#666666' })
vim.api.nvim_set_hl(0, 'NeoTreeRootName', { fg='#666666' })
vim.api.nvim_set_hl(0, 'NeoTreeDotFile', { fg='#444444' })
vim.api.nvim_set_hl(0, 'NeoTreeDirectoryIcon', { fg='#9fbfff' })
vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { fg='#dfefff' })
vim.api.nvim_set_hl(0, 'NeoTreeFileIcon', { fg='#ffffff' })
vim.api.nvim_set_hl(0, 'NeoTreeFileName', { fg='#e2e2e2' })
vim.api.nvim_set_hl(0, 'NeoTreeTabInactive', {  bg=none })
vim.api.nvim_set_hl(0, 'NeoTreeTabSeparatorInactive', {  bg=none })
vim.api.nvim_set_hl(0, 'NeoTreeTabSeparatorInactive', {  fg='#1a1a1a' })
vim.api.nvim_set_hl(0, 'NeoTreeTabSeparatorActive', {  fg='#1a1a1a' })
vim.api.nvim_set_hl(0, 'NeoTreeTabActive', {  fg='#dcdcdd' })
vim.api.nvim_set_hl(0, 'NeoTreeTabInactive', {  fg='#555555' })
vim.api.nvim_set_hl(0, 'Cursor', {  bg='#a6cbee' })
vim.api.nvim_set_hl(0, 'Visual', {  fg='#b7dafb', bg='#394f60' })
vim.api.nvim_set_hl(0, 'Error', {  fg='#d0616c' })
vim.api.nvim_set_hl(0, 'Comment', { fg='#4a4a4a', italic=true })
vim.api.nvim_set_hl(0, 'String', {  fg='#d3c8b8' })
-- vim.api.nvim_set_hl(0, 'Number', {  fg='#d79fa9' })
-- vim.api.nvim_set_hl(0, 'Statement', {  fg='#d4a690' })
vim.api.nvim_set_hl(0, 'Operator', {  fg='#dddddd' })
vim.api.nvim_set_hl(0, 'Delimiter', {  fg='#777777' })
vim.api.nvim_set_hl(0, 'WarningMsg', {  fg='#dd805b' })

require('lsp-colors').setup({
  Error = '#ec6a5f',
  Warning = '#f4bf4f',
  Information = '#3a5171',
  Hint = "#61c554"
})

local nvim_web_devicons = require 'nvim-web-devicons'
local current_icons = nvim_web_devicons.get_icons()
local new_icons = {}

for key, icon in pairs(current_icons) do
  icon.color = '#eeeeee'
  new_icons[key] = icon
end

 nvim_web_devicons.set_icon(new_icons)


