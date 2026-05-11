local scratch_buf = nil
local scratch_win = nil

local function toggle_scratch()
  if scratch_win and vim.api.nvim_win_is_valid(scratch_win) then
    vim.api.nvim_win_close(scratch_win, false)
    scratch_win = nil
    return
  end

  if not scratch_buf or not vim.api.nvim_buf_is_valid(scratch_buf) then
    scratch_buf = vim.api.nvim_create_buf(false, true)

    vim.bo[scratch_buf].buftype = "nofile"
    vim.bo[scratch_buf].bufhidden = "hide"
    vim.bo[scratch_buf].swapfile = false
    vim.bo[scratch_buf].filetype = "markdown"

    vim.api.nvim_buf_set_name(scratch_buf, "*scratch*")
  end

  vim.cmd("botright 20split")
  scratch_win = vim.api.nvim_get_current_win()

  vim.api.nvim_win_set_buf(scratch_win, scratch_buf)

  vim.wo[scratch_win].winfixheight = true
  vim.wo[scratch_win].wrap = true
  vim.wo[scratch_win].linebreak = true
end

vim.keymap.set("n", "<leader>a", toggle_scratch, { desc = "Toggle Scratch pad" })
