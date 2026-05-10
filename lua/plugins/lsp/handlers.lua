local M = {}

M.setup_ui = function()
  vim.diagnostic.config({
    underline = true,
    update_in_insert = true,
    severity_sort = true,
    virtual_lines = false,
    virtual_text = true,
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = "",
        [vim.diagnostic.severity.WARN]  = "",
        [vim.diagnostic.severity.HINT]  = "",
        [vim.diagnostic.severity.INFO]  = "",
      },
      texthl = {
        [vim.diagnostic.severity.ERROR] = "Error",
        [vim.diagnostic.severity.WARN]  = "Warn",
        [vim.diagnostic.severity.HINT]  = "Hint",
        [vim.diagnostic.severity.INFO]  = "Info",
      },
      numhl = {
        [vim.diagnostic.severity.ERROR] = "",
        [vim.diagnostic.severity.WARN]  = "",
        [vim.diagnostic.severity.HINT]  = "",
        [vim.diagnostic.severity.INFO]  = "",
      }
    },
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "if_many",
      header = "",
      prefix = "",
    },
  })
end

M.on_attach = function(_, bufnr)
  local k = vim.keymap.set
  local opts = { noremap = true, silent = true, buffer = bufnr }
  k("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  k("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  k("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  k("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  k("n", "gH", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  k("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  k("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  k("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  -- k("n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
  k("n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
  k("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
  k("n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
  k("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
  vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format()' ]])
end

M.setup = function()
  M.setup_ui()

  local capabilities = require("blink.cmp").get_lsp_capabilities()

  local _, install = pcall(require, "plugins.lsp.install")

  for _, server in ipairs(install.lang_serves) do
    local ok, custom_config = pcall(require, "plugins.lsp.lang." .. server)
    local lsp_config = {
      capabilities = capabilities,
      on_attach = M.on_attach,
    }

    if ok and type(custom_config) == "table" then
      lsp_config = vim.tbl_deep_extend('force', lsp_config, custom_config or {})
    end

    vim.lsp.config(server, lsp_config)
    vim.lsp.enable(server)
  end
end

return M
