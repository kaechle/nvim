local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#282828',
}

local finale = {
  normal = {
    a = { fg = colors.white, bg = colors.grey },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white, bg = colors.grey },
    x = { fg = colors.white, bg = colors.grey },
    y = { fg = colors.white, bg = colors.grey },
    z = { fg = colors.white, bg = colors.grey },
  },
  insert = { a = { fg = colors.blue, bg = colors.grey} },
  visual = { a = { fg = colors.cyan, bg = colors.grey } },
  replace = { a = { fg = colors.red, bg = colors.grey } },

  inactive = {
    a = { fg = colors.white, bg = colors.grey },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white, bg = colors.grey },
    x = { fg = colors.white, bg = colors.grey },
    y = { fg = colors.white, bg = colors.grey },
    z = { fg = colors.white, bg = colors.grey },
  },
}


local config = {
  options = {
    globalstatus = true,
    component_separators = '|',
    section_separators = { left = '', right = '' },
    theme = finale
  },
  sections = {
    lualine_a = {
      {
        'branch',
        separator = { left = '' },
        icon = ''
      }
    },
    lualine_b = {
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {
      {
        'diagnostics',
        separator = { right = '' },
        sources = { 'nvim_diagnostic' },
        symbols = { error = '󰅝 ', warn = '󰀪 ', info = '󰳤 ' },
      }
    }
  },
  inactive_sections = {
    lualine_a = 
      {
        separator = { left = '', padding = 3 },
        'branch',
        icon = ' '
      }
    },
    lualine_b = {
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {
      {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        symbols ={ error = '󰅝 ', warn = '󰀪 ', info = '󰳤 ' },
        separator = { right = '' }
      }
    },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require('lualine').setup(config)
-- 
-- local function ins_left(component)
--   table.insert(config.sections.lualine_c, component)
-- end
-- 
-- local function ins_right(component)
--   table.insert(config.sections.lualine_x, component)
-- end
-- 
-- ins_left {
--   separator = { left = '' },
--   icon = '',
--   'branch',
-- }
-- 
-- ins_right {
--   icon = '󰄴 ',
--   color = { fg = '#7cb4db', gui = 'bold' },
--   function()
--     local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
--     local clients = vim.lsp.get_active_clients()
--     if next(clients) == nil then
--       return msg
--     end
--     for _, client in ipairs(clients) do
--       local filetypes = client.config.filetypes
--       if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
--         return client.name
--       end
--     end
--   end
-- }
-- 
-- --ins_right {
-- --  icon = '󰄴 ',
-- -- color = { fg = '#7cb4db', gui = 'bold' },
-- -- function()
-- --   local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
-- --   local clients = vim.lsp.get_active_clients()
-- --   if next(clients) == nil then
-- --     return msg
-- --   end
-- --   for _, client in ipairs(clients) do
-- --     local filetypes = client.config.filetypes
-- --     if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
-- --       return client.name
-- --     end
-- --   end
-- -- end
-- --}
-- 
-- ins_right {
--   'diagnostics',
--   sources = { 'nvim_diagnostic' },
--   symbols = { error = ' ', warn = ' ', info = ' ' },
--   diagnostics_color = {
--     color_error = { fg = colors.red },
--     color_warn = { fg = colors.yellow },
--     color_info = { fg = colors.cyan },
--   }
-- }
-- 
-- ins_right {
--   
-- }

