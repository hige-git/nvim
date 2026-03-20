return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
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
  keys = {
    { "<leader>ff", mode = "n", "<cmd>Telescope find_files<CR>", desc = "Fuzzy find Files" },
    { "<leader>fr", mode = "n", "<cmd>Telescope registers<CR>",  desc = "Fuzzy trough registers" },
    { "<leader>fg", mode = "n", "<cmd>Telescope live_grep<CR>",  desc = "Fuzzy grep Files" },
    { "<leader>fb", mode = "n", "<cmd>Telescope buffers<CR>",    desc = "Fuzzy find Buffers" },
    { "<leader>fh", mode = "n", "<cmd>Telescope help_tags<CR>",  desc = "Fuzzy find help" },
  }
}
