-- flash nvim
-- whichkey

return {
 {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
 },
 {
   "nvim-lualine/lualine.nvim",
   dependencies = {
     "nvim-tree/nvim-web-devicons",
   },
   opts = {
     options ={
       theme = 'gruvbox_dark',
    },
   }
 },
 {
   "akinsho/bufferline.nvim",
   version = "*",
   dependencies = "nvim-tree/nvim-web-devicons",
   opts = {
     options = {
       mode = "tabs",
       truncate_names = true,
       max_name_length = 18,
       path = 0
     }
   }
 }
}

