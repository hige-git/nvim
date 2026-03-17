return {
  "stevearc/conform.nvim",
  enabled = true,
  config = function()
    require("conform").setup({
      notify_on_error = false,
      format_after_save = function(bufnr)
        -- Disable with a global or buffer-local variable
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          return
        end
        return { timeout_ms = 2000, async = true, lsp_format = "fallback" }
      end,
      formatters_by_ft = {
        lua = { "mystylua" },
        python = { "black" },
        html = { "prettier" },
        js = { "prettier" },
        php = { "prettier" },
        go = { "gofmt", "goimports" },
        -- templ = { "templ" },
        -- sql = { "sqlfmt" },
        json = { "prettier" },
        rust = { "rustfmt" },
        latex = { "tex-fmt" },
      },
      formatters = {
        mystylua = {
          command = "stylua",
          args = { "--indent-type", "Spaces", "--indent-width", "2", "-" },
        },
      },
    })

    vim.api.nvim_create_user_command("FormatDisable", function(args)
      if args.bang then
        -- FormatDisable! will disable formatting just for this buffer
        vim.b.disable_autoformat = true
      else
        vim.g.disable_autoformat = true
      end
    end, {
      desc = "Disable autoformat-on-save",
      bang = true,
    })
    vim.api.nvim_create_user_command("FormatEnable", function()
      vim.b.disable_autoformat = false
      vim.g.disable_autoformat = false
    end, {
      desc = "Re-enable autoformat-on-save",
    })

    vim.keymap.set("n", "<leader>dc", function()
      if not vim.b.disable_autoformat then
        vim.b.disable_autoformat = true
      else
        vim.b.disable_autoformat = not vim.b.disable_autoformat
      end
    end, { desc = "Toggle Autoformat for buffer" })

    require("conform").formatters.injected = {
      options = {
        ignore_errors = false,

        lang_to_ext = {
          bash = "sh",
          c_sharp = "cs",
          elixir = "exs",
          javascript = "js",
          julia = "jl",
          latex = "tex",
          markdown = "md",
          python = "py",
          ruby = "rb",
          rust = "rs",
          teal = "tl",
          r = "r",
          typescript = "ts",
        },

        lang_to_formatters = {},
      },
    }

    vim.keymap.set("n", "<space>fw", function()
      require("conform").format({ timeout_ms = 2000, async = true, lsp_format = "fallback" })
    end, { desc = "Format buffer with conform" })
  end,
}
