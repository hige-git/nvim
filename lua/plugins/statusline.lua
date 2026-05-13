local function org_timer()
  local ok, orgmode = pcall(require, "orgmode")
  if not ok or not orgmode.statusline then
    return "No Timer"
  end

  local text = orgmode.statusline()
  if text == nil or text == "" then
    return "No Timer"
  end

  return text
end

return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      extensions = {
        org_timer,
      },
      options = {
        theme = 'auto',
        always_show_tabline = false,
      },
      tabline = {
        lualine_a = { 'tabs' },
      },
      winbar = {
        lualine_z = { org_timer },
      },
    }
  },
}
