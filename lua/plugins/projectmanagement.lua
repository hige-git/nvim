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
        detection_methods = { "pattern", "lsp" },
        patterns = { ".git", ".projectile", "Makefile", "package.json", "go.mod", "pyproject.toml" },
        show_hidden = false,
        silent_chdir = true,
      })
      require("telescope").load_extension("projects")
    end,
  }
}
