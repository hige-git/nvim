return {
 {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
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
      }
    }
 },
 {
   "stevearc/oil.nvim",
   lazy = false,
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
    { "<leader>e", "<cmd>Oil<CR>", desc = "Open Oil" },
   },
 }
}

