local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


vim.g.mapleader = ' '

map('n', '<A-[>', '<Cmd>bp<CR>', opts)
map('n', '<A-]>', '<Cmd>bn<CR>', opts)
map('n', '<A-p>', '<Cmd>Telescope<CR>', opts)
map('n', '<A-o>', '<Cmd>Telescope file_browser<CR>', opts)
map('n', '<A-k>', '<Cmd>Telescope buffers<CR>', opts)
map('n', '<A-j>', ':TroubleToggle<CR>', opts)
map('n', '\\', ':Telescope file_browser<CR>', opts)
map('n', '<A-s>', ':w<CR>', opts)
map('n', '<A-q>q', ':qa<CR>', opts)
map('n', '<A-w>', ':bd<CR> :bn<CR>', opts)
map('n', '<A-r>', ':so %<CR>', opts)
map('n', '<A-l>', '<cmd><CR>', opts)
