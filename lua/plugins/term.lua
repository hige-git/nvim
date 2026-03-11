-- local status, term = pcall(require, "toggleterm")
-- if not status then
--   return
-- end
return {
  "akinsho/toggleterm.nvim",
  opts = {
    direction = 'horizontal',
    size = 20,
  },
  keys = {
    { "<leader>t", mode = "n", "<cmd>ToggleTerm<CR>", desc = "Open Terminal" },
    { "<Esc>",     mode = "t", "<C-\\><C-n>",         desc = "Enter normal mode in terminal" },
  }
}
