return {
  cmd = { "clangd", "--compile-commands-dir=" ..vim.fn.getcwd() .. "/build" },
  filetypes = { "cpp", "c", "objc", "objcpp" },
  root_dir = function (fname)
    return lspconfig.util.root_pattern("compile_commands.json", "CMakeLists.txt", ".git")(fname) or vim.fn.getcwd()
  end,
}
