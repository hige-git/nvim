return {
	settings = {

		Lua = {
			diagnostics = {
				globals = { "vim" },
        disable = { "missing-fields" }
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
}
