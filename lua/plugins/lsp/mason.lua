local _, install = pcall(require, "plugins.lsp.install")

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
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = install.tools,
    }
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      automatic_installation = true,
      ensure_installed = install.lang_serves,
    },

    config = function(_, plugin_opts)
      local mason_lspconfig = require("mason-lspconfig")

      mason_lspconfig.setup({
        ensure_installed = plugin_opts.ensure_installed,
        automatic_installation = plugin_opts.automatic_installation,

        handlers = {
          function(server)
            local server_opts = {
              on_attach = require("plugins.lsp.handlers").on_attach,
              capabilities = require("plugins.lsp.handlers").capabilities,
            }

            local ok, conf = pcall(require, "plugins.lsp.lang." .. server)
            if ok and type(conf) == "table" then
              server_opts = vim.tbl_deep_extend("force", server_opts, conf)
            end

            print(server_opts)
            vim.lsp.config(server, server_opts)
            vim.lsp.enable(server)
            -- vim.lsp.config[server].setup(server_opts)
          end,
        },
      })
    end,
  },
}
