local lualine = require('lualine')

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

local colors = {
  bg       = 'NONE',
  fg       = '#aba8ad',
  yellow   = '#c9a376',
  cyan     = '#83abbc',
  darkblue = '#869cbb',
  green    = '#4f857b',
  orange   = '#7bb2cf',
  violet   = '#bd8d99',
  magenta  = '#bd8d98',
  blue     = '#749fdd',
  red      = '#b66a5c',
}

-- Config
local config = {
  options = {
    globalstatus = true,
    component_separators = '',
    section_separators = '',
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
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
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = { 'neo-tree' }
}

local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  'branch',
  icon = '  '
}

ins_left {
  'diff',
  symbols = { added = ' ', modified = '柳', removed = ' ' },
  cond = conditions.hide_in_width,
}

ins_left {
  function()
    return '%='
  end,
}

ins_right {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    --color_error = { fg = colors.red },
    --color_warn = { fg = colors.yellow },
    --color_info = { fg = colors.cyan },
  },
}

ins_right {
  icon = ' ',
  color = { fg = '#7cb4db', gui = 'bold' },
  function()
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
  end
}

ins_right {
  icon = '󰄴 ',
  color = { fg = '#7cb4db', gui = 'bold' },
  function()
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
  end
}



ins_right { 'location' }

lualine.setup(config)
