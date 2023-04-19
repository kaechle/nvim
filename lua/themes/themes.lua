-- hi Normal guifg=#cccccc guibg=none
-- hi VertSplit guifg=#333333
-- hi NonText guifg=#222222
-- hi CursorLine guibg=none
-- hi CursorLineNr guifg=#888888
-- hi LineNr guifg=#444444

-- hi StatusLine guifg=none guibg=none

-- hi NeoTreeRootName guifg=#666666 gui=none cterm=none
-- hi NeoTreeDotFile guifg=#444444
-- hi NeoTreeDirectoryIcon guifg=#8ab7e7

-- hi Cursor guibg=#96ffd5
-- hi Visual guifg=#96ffd6 guibg=#263a31
-- hi Error guifg=#d0616c

-- hi Comment guifg=#444444
-- hi String guifg=#e6d8bb
-- hi Number guifg=#d79fa9
-- hi Statement guifg=#d4a690
-- hi Operator guifg=#dddddd
-- hi Delimiter guifg=#777777

-- hi WarningMsg guifg=#dd805b

local nvim_web_devicons = require "nvim-web-devicons"
local current_icons = nvim_web_devicons.get_icons()
local new_icons = {}

for key, icon in pairs(current_icons) do
  icon.color = "#999999"
  new_icons[key] = icon
end

nvim_web_devicons.set_icon(new_icons)
