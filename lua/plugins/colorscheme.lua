return {
  {
    "vague2k/huez.nvim",
    dependencies = { "nvim-telescope/telescope.nvim",
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
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
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
    priority = 1000
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true
    }
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000
  },
  {
    "daltonmenezes/aura-theme",
    lazy = false,
    priority = 1000
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    }
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 1000
  },
  {
    "miikanissi/modus-themes.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true
    }
  }
}
