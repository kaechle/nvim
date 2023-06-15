require('neo-tree').setup({
  close_if_last_window = false,
  popup_border_style = "rounded",
  enable_git_status = false,
  enable_diagnostics = false,
  open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
  sort_case_insensitive = false,
  sort_function = nil,
  source_selector = {
    winbar = false
  },
  default_component_configs = {
    container = {
      enable_character_fade = true
    },
    indent = {
      indent_size = 2,
      padding = 2, -- extra padding on left hand side
      with_markers = false,
      with_expanders = false, -- if nil and file nesting is enabled, will enable expanders
    },
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "",
      -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
      -- then these will never be used.
      default = "*",
      highlight = "NeoTreeFileIcon"
    },
    modified = {
      symbol = "",
      highlight = "NeoTreeFileName",
    },
    name = {
      trailing_slash = false,
      use_git_status_colors = true,
      highlight = "NeoTreeFileName",
    },
    git_status = {
      symbols = {
        -- Change type
        added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
        modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
        deleted   = "",-- this can only be used in the git_status source
        renamed   = "",-- this can only be used in the git_status source
        -- Status type
        untracked = "",
        ignored   = "",
        unstaged  = "",
        staged    = "",
        conflict  = "",
      }
    },
  },
  window = {
    position = "left",
    width = 31,
    mapping_options = {
      noremap = true,
      nowait = true,
    },
    mappings = {}
  },
  nesting_rules = {},
  filesystem = {
    filtered_items = {
      visible = false, -- when true, they will just be displayed differently than normal items
      hide_dotfiles = false,
      hide_gitignored = true,
      hide_hidden = false, -- only works on Windows for hidden files/directories
      hide_by_name = {},
      hide_by_pattern = {},
      always_show = {},
      never_show = {
        '.DS_Store',
        'node_modules'
      },
      never_show_by_pattern = {}
    },
    follow_current_file = false, -- This will find and focus the file in the active buffer every
    -- time the current file is changed while the tree is open.
    group_empty_dirs = false, -- when true, empty folders will be grouped together
    hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
    -- in whatever position is specified in window.position
    -- "open_current",  -- netrw disabled, opening a directory opens within the
    -- window like netrw would, regardless of window.position
    -- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
    use_libuv_file_watcher = true, -- This will use the OS level file watchers to detect changes
    -- instead of relying on nvim autocmd events.
    window = {
      mappings = {
        ["<bs>"] = "navigate_up",
        ["."] = "set_root",
        ["H"] = "toggle_hidden",
        ["/"] = "fuzzy_finder",
        ["D"] = "fuzzy_finder_directory",
        ["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
        -- ["D"] = "fuzzy_sorter_directory",
        ["f"] = "filter_on_submit",
        ["<c-x>"] = "clear_filter",
        ["[g"] = "prev_git_modified",
        ["]g"] = "next_git_modified",
      }
    }
  },
  buffers = {
    follow_current_file = true, -- This will find and focus the file in the active buffer every
    -- time the current file is changed while the tree is open.
    group_empty_dirs = true, -- when true, empty folders will be grouped together
    show_unloaded = true,
    window = {
      mappings = {
        ["bd"] = "buffer_delete",
        ["<bs>"] = "navigate_up",
        ["."] = "set_root",
      }
    },
  },
  git_status = {
    window = {
      position = "float",
      mappings = {
        ["A"]  = "git_add_all",
        ["gu"] = "git_unstage_file",
        ["ga"] = "git_add_file",
        ["gr"] = "git_revert_file",
        ["gc"] = "git_commit",
        ["gp"] = "git_push",
        ["gg"] = "git_commit_and_push",
      }
    }
  }
})

vim.cmd([[nnoremap \ :NeoTreeFloatToggle<cr>]])

--local opts = {
--  highlight_hovered_item = true,
--  show_guides = false,
--  auto_preview = false,
--  position = 'right',
--  relative_width = false,
--  width = 30,
--  auto_close = false,
--  show_numbers = false,
--  show_relative_numbers = false,
--  show_symbol_details = false,
--  preview_bg_highlight = 'NONE',
--  autofold_depth = nil,
--  auto_unfold_hover = true,
--  fold_markers = { '', '' },
--  wrap = false,
--  keymaps = { -- These keymaps can be a string or a table for multiple keys
--  close = {"<Esc>", "q"},
--  goto_location = "<Cr>",
--  focus_location = "o",
--  hover_symbol = "<C-space>",
--  toggle_preview = "K",
--  rename_symbol = "r",
--  code_actions = "a",
--  fold = "h",
--  unfold = "l",
--  fold_all = "W",
--  unfold_all = "E",
--  fold_reset = "R",
--},
--lsp_blacklist = {},
--symbol_blacklist = {},
--symbols = {
--  File = { icon = "", hl = "@text.uri" },
--  Module = { icon = "", hl = "@namespace" },
--  Namespace = { icon = "", hl = "@namespace" },
--  Package = { icon = "", hl = "@namespace" },
--  Class = { icon = "𝓒", hl = "@type" },
--  Method = { icon = "ƒ", hl = "@method" },
--  Property = { icon = "", hl = "@method" },
--  Field = { icon = "", hl = "@field" },
--  Constructor = { icon = "", hl = "@constructor" },
--  Enum = { icon = "ℰ", hl = "@type" },
--  Interface = { icon = "ﰮ", hl = "@type" },
--  Function = { icon = "", hl = "@function" },
--  Variable = { icon = "", hl = "@constant" },
--  Constant = { icon = "", hl = "@constant" },
--  String = { icon = "𝓐", hl = "@string" },
--  Number = { icon = "#", hl = "@number" },
--  Boolean = { icon = "⊨", hl = "@boolean" },
--    Array = { icon = "", hl = "@constant" },
--    Object = { icon = "⦿", hl = "@type" },
--    Key = { icon = "🔐", hl = "@type" },
--    Null = { icon = "NULL", hl = "@type" },
--    EnumMember = { icon = "", hl = "@field" },
--    Struct = { icon = "𝓢", hl = "@type" },
--    Event = { icon = "🗲", hl = "@type" },
--    Operator = { icon = "+", hl = "@operator" },
--    TypeParameter = { icon = "𝙏", hl = "@parameter" },
--    Component = { icon = "", hl = "@function" },
--    Fragment = { icon = "", hl = "@constant" },
--  }
--}

