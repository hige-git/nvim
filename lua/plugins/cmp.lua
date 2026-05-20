return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },

    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
  {
    'Saghen/blink.cmp',
    dependencies = {
      "rafamadriz/friendly-snippets",
      "Saghen/blink.lib",
    },
    build = 'cargo build --release',

    version = '1.*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = "default",
        ["<CR>"] = { "accept", "fallback" },
        ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
      },
      appearance = {
        nerd_font_variant = 'mono',
      },

      completion = {
        documentation = {
          auto_show = true
        }
      },

      sources = {
        default = {
          "lsp",
          "path",
          "snippets",
          "buffer",
        },
      },
      fuzzy = {
        implementation = "prefer_rust_with_warning"
      },
      snippets = {
        preset = "luasnip",
      }
    },
    opts_extend = { "sources.default" },
  },
}
