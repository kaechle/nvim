local lualine = require('lualine')

--local conditions = {
--  buffer_not_empty = function()
--    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
--  end,
--  hide_in_width = function()
--    return vim.fn.winwidth(0) > 80
--  end,
--  check_git_workspace = function()
--    local filepath = vim.fn.expand('%:p:h')
--    local gitdir = vim.fn.finddir('.git', filepath .. ';')
--    return gitdir and #gitdir > 0 and #gitdir < #filepath
--  end,
--}

local colors = {
  bg       = '#282828',
  fg       = '#abaaaa',
  yellow   = '#c9b396',
  cyan     = '#9babbc',
  darkblue = '#869cbb',
  green    = '#4f857b',
  orange   = '#7bb2cf',
  violet   = '#bd9da9',
  magenta  = '#bd8d98',
  blue     = '#749fdd',
  red      = '#b66a5c',
}

-- Config
local config = {
  options = {
    fmt = string.lower,
    globalstatus = true,
    component_separators = '',
    section_separators = '',
    theme = {
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
    ignore_focus = { 'neo-tree' },
  },
  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
  tabline = {
--    lualine_a = {},
--    lualine_b = {},
--    lualine_c = {},
--    lualine_x = {},
--    lualine_y = {},
--    lualine_z = {}
  },
  winbar = {
--    lualine_a = {},
--    lualine_b = {},
--    lualine_c = {},
--    lualine_x = {},
--    lualine_y = {},
--    lualine_z = {}
  },
  inactive_winbar = {},
  extensions = {}
}

local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  icon = '',
  'branch',
}

--ins_right {
--  icon = '󰄴 ',
--  color = { fg = '#7cb4db', gui = 'bold' },
--  function()
--    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
--    local clients = vim.lsp.get_active_clients()
--    if next(clients) == nil then
--      return msg
--    end
--    for _, client in ipairs(clients) do
--      local filetypes = client.config.filetypes
--      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
--        return client.name
--      end
--    end
--  end
--}

--ins_right {
--  icon = '󰄴 ',
-- color = { fg = '#7cb4db', gui = 'bold' },
-- function()
--   local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
--   local clients = vim.lsp.get_active_clients()
--   if next(clients) == nil then
--     return msg
--   end
--   for _, client in ipairs(clients) do
--     local filetypes = client.config.filetypes
--     if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
--       return client.name
--     end
--   end
-- end
--}

ins_right {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}

lualine.setup(config)
