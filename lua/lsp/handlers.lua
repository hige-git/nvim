local M = {}

M.setup = function()
  -- This is Deprecated:
	local signs = {
		{ name = "DiagnosticSignError", text = "" },
		{ name = "DiagnosticSignWarn", text = "" },
		{ name = "DiagnosticSignHint", text = "" },
		{ name = "DiagnosticSignInfo", text = "" },
	}

	for _, sign in ipairs(signs) do
		vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
	end

  -- This is new, but not right yet
  -- vim.diagnostic.config({
  --   signs = {
  --     text = {
  --       [vim.diagnostic.severity.ERROR] = "",
  --       [vim.diagnostic.severity.WARN] = "",
  --       [vim.diagnostic.severity.HINT] = "",
  --       [vim.diagnostic.severity.INFO] = "",
  --     },
  --     linehl = {
  --       [vim.diagnostic.severity.ERROR] = 'ERR',
  --     },
  --     numhl = "",
  --   }
  -- })


	local config = {
		-- disable virtual text
		virtual_text = false,
		-- show signs
		signs = {
			active = signs,
		},
		update_in_insert = true,
		underline = true,
		severity_sort = true,
		float = {
			focusable = false,
			style = "minimal",
			border = "rounded",
			source = "always",
			header = "",
			prefix = "",
		},
	}

	vim.diagnostic.config(config)

	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
		border = "rounded",
	})

	vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
		border = "rounded",
	})
end

local function lsp_keymaps()
  local k = vim.keymap.set
	local opts = { noremap = true, silent = true }
	k("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	k("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	k("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	k("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	k("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	-- k("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	k("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	-- k("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	-- k("n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	k("n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
	k("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	k("n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
	k("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
	vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formating()' ]])
end

M.on_attach = function()
	lsp_keymaps()
end

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if status_ok then
	M.capabilities = cmp_nvim_lsp.default_capabilities()
end

return M
