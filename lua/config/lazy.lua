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
