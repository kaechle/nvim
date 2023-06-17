if vim.g.vscode then
  require('keys')
  require('options')-- VSCode extension
else
  require('plugins')  -- VSCode extension
  require('keys')
  require('options')-- ordinary Neovim
end

