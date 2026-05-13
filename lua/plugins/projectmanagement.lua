return {
  {
    'nvim-orgmode/orgmode',
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    event = 'VeryLazy',
    config = function()
      require('orgmode').setup({
        org_agenda_files = { '~/orgfiles/**/*' },
        org_default_notes_file = '~/orgfiles/refile.org',
        org_capture_templates = {
          t = {
            description = 'Todo',
            template    = '* TODO %?\n  %U',
            target      = '~/orgfiles/todos.org',
            headline    = 'Tasks',
          },
          n = {
            description = 'Note',
            template    = '* %? :note:\n  %U\n  %i',
            target      = '~/orgfiles/notes.org',
            headline    = 'Notes',
          },
          c = {
            description = 'Clock entry',
            template    = '* %?\n  %U',
            target      = '~/orgfiles/timetrack.org',
            headline    = 'Time Log',
          },
        },
      })

      local k = vim.keymap.set
      k('n', '<leader>oa', '<cmd>lua require("orgmode").action("agenda.prompt")<CR>', { desc = 'Org agenda' })
      k('n', '<leader>oc', '<cmd>lua require("orgmode").action("capture.prompt")<CR>', { desc = 'Org capture' })
      k('n', '<leader>oxi', '<cmd>lua require("orgmode").action("clock.org_clock_in")<CR>', { desc = 'Org clock in' })
      k('n', '<leader>oxo', '<cmd>lua require("orgmode").action("clock.org_clock_out")<CR>', { desc = 'Org clock out' })
      k('n', '<leader>oxr', '<cmd>lua require("orgmode").action("clock.org_clock_report")<CR>',
        { desc = 'Org clock report' })
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
