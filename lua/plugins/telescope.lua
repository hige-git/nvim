return {
	"nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    defaults = {
      },
    },
    pickers = {
      find_files = {
        hidden = true,
        no_ignore = true,
      },
    },
}

