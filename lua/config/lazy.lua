local fn = vim.fn

-- Automatically install lazy if not installed
local lazypath = fn.stdpath("data") .. "lazy/lazy.nvim"
if fn.empty(fn.glob(lazypath)) > 0 then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		lazyrepo,
		lazypath,
	})
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Define Custom plugins
-- plugins = {
-- 	-- LSP
-- 	"neovim/nvim-lspconfig", -- Enables lsp config
-- 	"mason-org/mason.nvim", -- LSP Manager
-- 	"mason-org/mason-lspconfig.nvim", -- LSP config helper
-- 	-- "jose-elias-alvarez/null-ls.nvim", -- LSP Diagnostics -- Currently Deprecated
-- 	-- CMP
-- 	-- "hrsh7th/nvim-cmp",
-- 	-- "hrsh7th/cmp-buffer",
-- 	-- "hrsh7th/cmp-path",
-- 	-- "hrsh7th/cmp-cmdline",
-- 	-- "saadparwaiz1/cmp_luasnip",
-- 	-- "hrsh7th/cmp-nvim-lsp",
-- 	-- "L3MON4D3/LuaSnip",
-- 	-- Telescope
-- 	"nvim-telescope/telescope.nvim",
-- 	"nvim-lua/plenary.nvim",
-- 	"nvim-treesitter/nvim-treesitter",
-- 	-- neo tree
-- 	-- "nvim-neo-tree/neo-tree.nvim",
-- 	"nvim-tree/nvim-web-devicons",
-- 	"MunifTanjim/nui.nvim",
-- 	-- Floating terminal
-- 	-- "akinsho/toggleterm.nvim",
-- 	-- Markdown Preview
-- 	"MeanderingProgrammer/render-markdown.nvim",
-- 	"echasnovski/mini.nvim",
--   -- colorscheme
--   "savq/melange-nvim",
--   "iamcco/markdown-preview.nvim",
--   -- vscode style diff in nvim
--   "esmuellert/vscode-diff.nvim",
--   -- Key hints when using keymaps
--   "folke/which-key.nvim",
-- }
-- Setup Lazy
require("lazy").setup("plugins", {
	defaults = {
		lazy = false,
		version = false,
	},
	checker = {
		enabled = true, -- Checks for Updates periodically
		notify = false, -- If update dont notify, just do
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
