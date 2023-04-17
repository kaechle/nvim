vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope file_browser<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>s', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':qa<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':close<CR> :bn<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-[>', ':bp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-]>', ':bn<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':NeoTreeRevealToggle<CR>', { noremap = true })