" Options
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "html", "css", "javascript", "typescript", "dockerfile", "gitignore", "json", "markdown", "regex", "sql", "tsx", "vim" },
  sync_install = false,
  auto_install = true,
  ignore_install = {""},
  highlight = {
    enable = true,
    disable = {""},
    additional_vim_regex_highlighting = true,
  },
  rainbow = {
    enable = true,
    disable = {""},
    extended_mode = true,
    max_file_lines = nil
    -- colors = {},
    -- termcolors = {}
  },
  indent = {
      enable = true,
      disable = {""}
  },
  autotag = {
      enable = true
  }
}
EOF
