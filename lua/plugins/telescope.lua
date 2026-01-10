return {
	"nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function ()
    require('telescope').setup({
      pickers = {
        find_files = {
          hidden = false,
          no_ignore = false,
        }
      }
    })
  end,
  opts = {
    defaults = {
      },
    },
}

