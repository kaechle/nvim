vim.api.nvim_set_hl(0, "Keyword", { fg='#e37559' })
vim.api.nvim_set_hl(0, "Normal", { fg='#dcdcdd', bg='none' })
vim.api.nvim_set_hl(0, "VertSplit", { fg='#282828' })
vim.api.nvim_set_hl(0, "NonText", { fg='#202020' })
vim.api.nvim_set_hl(0, "CursorLine", { bg='none' })
vim.api.nvim_set_hl(0, "IndentBlankLineChar", { fg='#242424' })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg='#999999' })
vim.api.nvim_set_hl(0, "LineNr", { fg='#4a4a4a', bg='none' })
vim.api.nvim_set_hl(0, "NormalFloat", { bg='none' })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg='#666666' })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg='#666666' })
vim.api.nvim_set_hl(0, "NeoTreeDotFile", { fg='#444444' })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg='#96bbce' })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg='#a6cbde' })
vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg='#dcdcdd' })
vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg='#dcdcdd' })
vim.api.nvim_set_hl(0, "NeoTreeTabInactive", {  bg=none })
vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive", {  bg=none })
vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive", {  fg='#1a1a1a' })
vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorActive", {  fg='#1a1a1a' })
vim.api.nvim_set_hl(0, "NeoTreeTabActive", {  fg='#dcdcdd' })
vim.api.nvim_set_hl(0, "NeoTreeTabInactive", {  fg='#555555' })
vim.api.nvim_set_hl(0, "Cursor", {  bg='#a6cbee' })
vim.api.nvim_set_hl(0, "Visual", {  fg='#b7dafb', bg='#394f60' })
vim.api.nvim_set_hl(0, "Error", {  fg='#d0616c' })
vim.api.nvim_set_hl(0, "Comment", {  fg='#4a4a4a' })
vim.api.nvim_set_hl(0, "String", {  fg='#ecd1ab' })
vim.api.nvim_set_hl(0, "Number", {  fg='#d79fa9' })
vim.api.nvim_set_hl(0, "Statement", {  fg='#d4a690' })
vim.api.nvim_set_hl(0, "Operator", {  fg='#dddddd' })
vim.api.nvim_set_hl(0, "Delimiter", {  fg='#777777' })
vim.api.nvim_set_hl(0, "WarningMsg", {  fg='#dd805b' })

local nvim_web_devicons = require "nvim-web-devicons"
local current_icons = nvim_web_devicons.get_icons()
local new_icons = {}

for key, icon in pairs(current_icons) do
  icon.color = "#999999"
  new_icons[key] = icon
end

 nvim_web_devicons.set_icon(new_icons)


