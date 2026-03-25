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
    "christoomey/vim-tmux-navigator",
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    keys = {
      { "<leader>ss", mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "S",          mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",          mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",          mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>",      mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
  },
  {
    "j-morano/buffer_manager.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>bb", mode = "n", function() require("buffer_manager.ui").toggle_quick_menu() end, desc = "Toggles Buffer Menu" },
    }
  },
  {
    "nvim-mini/mini.pairs",
    version = false,
    opts = {}
  },
  {
    "abecodes/tabout.nvim",
    lazy = false,
    config = function()
      require('tabout').setup {
        tabkey = '<Tab>',             -- key to trigger tabout, set to an empty string to disable
        backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
        act_as_tab = true,            -- shift content if tab out is not possible
        act_as_shift_tab = false,     -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
        default_tab = '<C-t>',        -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
        default_shift_tab = '<C-d>',  -- reverse shift default action,
        enable_backwards = true,      -- well ...
        completion = false,           -- if the tabkey is used in a completion pum
        tabouts = {
          { open = "'", close = "'" },
          { open = '"', close = '"' },
          { open = '`', close = '`' },
          { open = '(', close = ')' },
          { open = '[', close = ']' },
          { open = '{', close = '}' }
        },
        ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
        exclude = {} -- tabout will ignore these filetypes
      }
    end,
    dependencies = { -- These are optional
      "nvim-treesitter/nvim-treesitter",
      "L3MON4D3/LuaSnip",
      "hrsh7th/nvim-cmp"
    },
    opt = true,              -- Set this to true if the plugin is optional
    event = 'InsertCharPre', -- Set the event to 'InsertCharPre' for better compatibility
    priority = 1000,
  },
  {
    "nvim-mini/mini.surround",
    opts = {
      mappings = {
        add = '<leader>sa',        -- Add surrounding in Normal and Visual modes
        delete = '<leader>sd',     -- Delete surrounding
        find = '<leader>sf',       -- Find surrounding (to the right)
        find_left = '<leader>sF',  -- Find surrounding (to the left)
        highlight = '<leader>sh',  -- Highlight surrounding
        replace = '<leader>sr',    -- Replace surrounding

        suffix_last = '<leader>l', -- Suffix to search with "prev" method
        suffix_next = '<leader>n', -- Suffix to search with "next" method
      },
    },
  },
  {
    "davmacario/nvim-quicknotes",
    opts = {},
    keys = {
      { "<leader>o",  mode = { "n" }, function() require("nvim-quicknotes").open_quicknotes() end,  desc = "Open Quicknotes" },
      { "<leader>bc", mode = { "n" }, function() require("nvim-quicknotes").clear_quicknotes() end, desc = "Clear Quicknotes from current buffer" },
    },
  },
}
