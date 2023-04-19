-- scrolling
vim.opt.scrolloff = 0
vim.cmd([[:set mousescroll=ver:1,hor:0]])

vim.o.syntax = true
vim.o.errorbells = false
vim.o.smartcase = true

vim.bo.swapfile = false
vim.o.backup = false
vim.o.undodir = vim.fn.stdpath('config') .. '/undodir'
vim.o.undofile = true
vim.o.incsearch = true
vim.o.hidden = true
vim.o.foldcolumn = '1'
vim.o.foldenable = true

-- indention
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- ui
vim.opt.background = 'dark'
vim.opt.termguicolors = true
vim.o.cmdheight = 0
vim.o.laststatus = 3
vim.wo.number = true
vim.opt.list = true
vim.wo.numberwidth = 4
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = 'yes'
vim.wo.linebreak = true
vim.opt.cursorline = true
vim.o.showmode = false
vim.cmd([[:colorscheme zenwritten]])
vim.cmd([[:set guicursor=n-v:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait300-blinkoff400-blinkon550-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175]])

-- lsp
vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert' }
vim.opt.shortmess = vim.opt.shortmess + { c = true }
vim.api.nvim_set_option('updatetime', 1000)
