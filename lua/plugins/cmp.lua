return {
  'Saghen/blink.cmp',
  dependencies = {
    "rafamadriz/friendly-snippets",
    "Saghen/blink.lib",
  },
  build = function()
    require('blink.cmp').build():wait(60000)
  end,

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
  },
  opts_extend = { "sources.default" },
}
