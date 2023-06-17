require'nvim-treesitter.configs'.setup {
  sync_install = true,
  auto_install = true,
  ignore_install = {},
  ensure_installed = {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "python",
    "fish",
    "javascript",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "rust"
  },
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
  },
}
