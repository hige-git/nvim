return {
  {
    "vague2k/huez.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    branch = "stable",
    event = "UIEnter",
    config = function()
      require("huez").setup({})
    end,
    keys = {
      { "<leader>fc", mode = "n", "<cmd>Huez<CR>", desc = "Theme Picker" },
    }
  },
  {
    "mcchrish/zenbones.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    lazy = false,
    priority = 1000
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
  }
}
