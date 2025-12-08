return {
 {
   "nvim-lualine/lualine.nvim",
   enabled = true,
   dependencies = {
     "nvim-tree/nvim-web-devicons",
   },
   opts = {
     options = {
       theme = 'gruvbox_dark',
       section_separators = '',
       component_separators = '',
       icons_enabled = true,
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filename' },
      lualine_x = { 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    }
   }
 },
 {
   'folke/noice.nvim',
   dependencies = {
     'MunifTanjim/nui.nvim',
     {
       'rcarriga/nvim-notify',
       opts = {
         render = "compact",
         stages = "fade",
       },
     },
   },
   events = 'VeryLazy',
   opts = {
     views = {
       cmdline_popup = {
         position = {
           row = 5,
           col = "50%",
         },
       },
     },
   },
 },
  -- {
  --   "vimpostor/vim-tpipeline",
  --   config = function ()
  --     vim.g.tpipeline_autoembed = 1
  --     vim.g.tpipeline_restore = 1
  --     vim.g.tpipeline_clearstl = 1
  --   end,
  -- }
}
