local lang_servers = {
  "clangd",
  "pyright",
  "gopls",
  "marksman",
  "lua_ls",
  "rust_analyzer",
  "bashls",
  "texlab",
  "terraformls",
}

return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = { package_installed = "✓", package_pending = "➜", package_uninstalled = "✗" },
      },
      registries = { "github:mason-org/mason-registry" },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      automatic_installation = true,
      ensure_installed = lang_servers,
    },
    config = function(_, opts)
      -- LSP Setup
      for _, server in pairs(lang_servers) do
       opts = {
         on_attach = require("plugins.lsp.handlers").on_attach,
         capabilities = require("plugins.lsp.handlers").capabilities
       }

       server = vim.split(server, "@")[1]

       local require_ok, conf_opts = pcall(require, "plugins.lsp.lang" .. server)
       if require_ok and type(conf_opts) == "table" then
        opts = vim.tbl_deep_extend("force", conf_opts, opts)
      end

      vim.lsp.config(server, opts)
     end
    end,
  },
}
