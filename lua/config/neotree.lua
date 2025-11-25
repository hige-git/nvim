local status, tree = pcall(require, "neo-tree")
if not status then
  return
end

tree.setup({
  window = {
    mappings = {
      ['/'] = "noop"
    }
  }
})

