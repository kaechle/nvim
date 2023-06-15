require('rose-pine').setup({
	variant = 'main',
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = true,
	disable_background = true,
	disable_float_background = true,
	disable_italics = false,

	groups = {
		background = 'base',
		background_nc = 'experimental_nc',
		panel = 'base',
		panel_nc = 'base',
		border = 'muted',
		comment = 'muted',
		link = 'iris',
		punctuation = 'muted',
		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',
		headings = 'subtle'
	},
	highlight_groups = {
    TelescopeBorder = { fg = "highlight_high", bg = "none" },
		TelescopeNormal = { bg = "none" },
		TelescopePromptNormal = { bg = "base" },
		TelescopeResultsNormal = { fg = "subtle", bg = "none" },
		TelescopeSelection = { fg = "text", bg = "base" },
		TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
	}
})

vim.cmd('colorscheme rose-pine')

vim.api.nvim_set_hl(0, "Keyword", { fg='#e37559' })
vim.api.nvim_set_hl(0, "Normal", { fg='#dcdcdd', bg='none' })
vim.api.nvim_set_hl(0, "VertSplit", { fg='#282828' })
vim.api.nvim_set_hl(0, "NonText", { fg='#222222' })
vim.api.nvim_set_hl(0, "CursorLine", { bg='none' })
vim.api.nvim_set_hl(0, "IndentBlankLineChar", { fg='#2f2f2f' })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg='#999999' })
vim.api.nvim_set_hl(0, "LineNr", { fg='#4a4a4a', bg='none' })
vim.api.nvim_set_hl(0, "NormalFloat", { bg='none' })
vim.api.nvim_set_hl(0, "StatusLine", { fg='none', bg='none' })
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


