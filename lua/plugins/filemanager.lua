return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      window = {
        mappings = {
          ['/'] = "noop"
        }
      },
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        }
      }
    },
    keys = {
      { "<leader>e",     mode = "n", "<cmd>Neotree toggle<CR>",  desc = "Opens file tree" },
      { "<leader><S-e>", mode = "n", "<cmd>Neotree buffers<CR>", desc = "Opens buffer tree" }
    }
  },
  {
    "stevearc/oil.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      default_file_explorer = true,
      columns = { "icon" },
      view_options = {
        show_hidden = true,
      },
      skip_confirm_for_simple_edits = true,
      keymaps = {
        ["<C-h>"] = false,
        ["<C-l>"] = false,

        ["<C-v>"] = "actions.select_vsplit",
        ["<C-x>"] = "actions.select_split",
        ["<C-t>"] = "actions.select_tab",

        ["q"] = "actions.close",
        ["<BS>"] = "actions.parent",
      }
    },
    keys = {
      { "-", "<cmd>Oil<CR>", desc = "Open current dir in Oil" },
    },
  },
  {
    "mbbill/undotree",
    lazy = false,
    keys = {
      { "<leader>u", mode = "n", "<cmd>UndotreeToggle<CR>", desc = "Open Undotree" }
    }
  }
}
