local parsers = {
  "c",
  "lua",
  "vim",
  "markdown",
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
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/nvim-treesitter-context",
    },
    opts = {
      ensure_installed = parsers,
      auto_install = true,

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
