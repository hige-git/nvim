
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

local settings = {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  },
  max_concurrent_installers = 6,         -- Limit for the maximum amount of packages to be installed at the same time. Once this limit is reached, any further 
  -- multiple registries, the registry listed first will be used.
  registries = {
    "github:mason-org/mason-registry",   -- Default registry
  },
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
  automatic_enable = true,
  ensure_installed = lang_servers,
})

-- Deprecated require lspconfig 
-- local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
-- if not lspconfig_status_ok then
--   return
-- end

local opts = {}

-- Iteration to configure every lsp defined
for _, server in pairs(lang_servers) do
   opts = {
     on_attach = require("config.lsp.handlers").on_attach,
     capabilities = require("config.lsp.handlers").capabilities
   }

   server = vim.split(server, "@")[1]

   local require_ok, conf_opts = pcall(require, "config.lsp.lang" .. server)
   if require_ok and type(conf_opts) == "table" then
    opts = vim.tbl_deep_extend("force", conf_opts, opts)
  end

  vim.lsp.config(server, opts)
 end
