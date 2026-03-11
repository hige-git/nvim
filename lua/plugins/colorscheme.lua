local gruvbox_material = require("plugins.colorschemes.gruvbox_material")


return {
  "LmanTW/themify.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    "loctvl842/monokai-pro.nvim",
    "folke/tokyonight.nvim",
    gruvbox_material,
  },
  keys = {
    { "<leader>cs", mode = "n", "<cmd>Themify<CR>", desc = "Toggles theme selector" },
  }
}
