local status, mark = pcall(require, "markdown-preview")
if not status then
  return
end

mark.setup({
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function() vim.fn["mkdp#util#install"]() end,
})
