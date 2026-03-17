return {
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", mode = "n", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },
  {
    "esmuellert/codediff.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    keys = {
      { "<leader>cd", mode = "n", "<cmd>CodeDiff<CR>", desc = "Open Code Diff" }
    }
  }
}
