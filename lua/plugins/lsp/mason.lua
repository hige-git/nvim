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
  },
}
