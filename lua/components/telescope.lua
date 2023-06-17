require("telescope").setup{
  load_extension = {
    file_browser = {
      hidden = false,
      only_current_dir = true,
      show_hidden = true,
      file_ignore_patterns = {
        "node_modules",
        "target",
        "dist",
        "build",
        "vendor",
        "tmp",
        "log",
        "logs",
        "cache",
        "deps",
        "node_modules",
        "vendor",
        "public",
        "static"
      }
    }
  }
}
