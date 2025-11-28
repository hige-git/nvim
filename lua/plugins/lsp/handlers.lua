local M = {}

M.setup = function()

  vim.diagnostic.config({
    underline = true,
    update_in_insert = true,
    severity_sort = true,
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
      source = "always",
      header = "",
      prefix = "",
    },
  })

	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
		border = "rounded",
	})

	vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
		border = "rounded",
	})
end

local function lsp_keymaps(bufnr)
  local k = vim.keymap.set
	local opts = { noremap = true, silent = true , buffer = bufnr }
	k("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	k("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	k("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	k("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	-- k("n", "gH", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts) -- needs remap
	-- k("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	k("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	-- k("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	-- k("n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	k("n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
	k("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	k("n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
	k("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
	vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format()' ]])
end

M.on_attach = function(client, bufnr)
	lsp_keymaps(bufnr)
end

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if status_ok then
	M.capabilities = cmp_nvim_lsp.default_capabilities()
end

return M
