local keymap = vim.keymap.set
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<C-[>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<C-]>', '<Cmd>BufferNext<CR>', opts)

keymap('n', '<leader>ff', ':Telescope<CR>')
keymap('n', '\\', ':Telescope file_browser<CR>')
keymap('n', '<leader>s', ':w<CR>', { noremap = true })
keymap('n', '<leader>q', ':qa<CR>', { noremap = true })
keymap('n', '<leader>w', ':bd<CR> :bn<CR>', { noremap = true })
keymap('n', '<leader>r', ':so %<CR>', { noremap = true })
keymap('n', '<C-l>', '<cmd>Lspsaga outline<CR>')

