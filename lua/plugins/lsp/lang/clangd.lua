return {
    cmd = { "clangd", "--compile-commands-dir=build" },
    filetypes = { "c", "cpp" },
    root_markers = {
        "compile_commands.json",
        "compile_flags.txt",
        "CMakeLists.txt",
        "build",
        ".git"
    },
    capabilities = {
        offsetEncoding = { "utf-16" },
    }
}
