return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      extensions = {
        org_timer,
      },
      options = {
        theme = 'auto',
        always_show_tabline = false,
      },
      tabline = {
        lualine_a = { 'tabs' },
      },
      winbar = {
        lualine_z = { org_timer },
      },
    }
  },
}
