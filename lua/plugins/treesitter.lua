local parsers = {
  "c",
  "lua",
  "vim",
  "markdown",
  "markdown_inline",
  "python",
  "go",
  "terraform",
  "regex",
  "bash",
  "sql",
  "html",
  "typescript",
  "vue",
  "latex",
  "yaml",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects", "nvim-treesitter/nvim-treesitter-context",
    },
    opts = {
      ensure_installed = parsers,
      auto_install = true,
      install_strategy = "git",

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },

      matchup = {
        enable = true,
      },
    },
  },
}
