return {
  require("plugins.lsp.mason"),
  -- require("config.lang.null-ls") -- To be done,
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.lsp.handlers").setup()
    end,
  },
}
