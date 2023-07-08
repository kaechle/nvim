if vim.g.vscode then
  require('lua/keys')
  require('lua/options')
else
  require('plugins')
  require('keys')
  require('options')
end

