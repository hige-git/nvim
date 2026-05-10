return {
  {
    'nvim-orgmode/orgmode',
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    event = 'VeryLazy',
    config = function()
      require('orgmode').setup({
        org_agenda_files = '~/orgfiles/**/*',
        org_default_notes_file = '~/orgfiles/refile.org',
      })
      vim.lsp.enable('org')
    end,
  },
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require("project_nvim").setup({
        detection_methods = { "pattern" },
        patterns = {
          ".git",
          ".projectile",
          "Makefile",
          "package.json",
        },

        show_hidden = true,
        silent_chdir = true,
        scope_chdir = true,
      })

      require("telescope").load_extension("projects")
    end
  }
}
