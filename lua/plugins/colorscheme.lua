return {
  "savq/melange-nvim",
  priority = 1000,
  config = function ()
    local colorscheme = "melange"
    local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

    if not ok then
      vim.notify("Colorscheme " .. colorscheme .. "not found!")
    end
  end
}

