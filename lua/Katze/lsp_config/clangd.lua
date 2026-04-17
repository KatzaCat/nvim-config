vim.lsp.config["clangd"] = {
  cmd = { "clangd", "--compile-commands-dir=build" },

  filetypes = { "c", "cpp", "h", "hpp" },

  root_markers = { "CMakeLists.txt", ".git" }
}

vim.lsp.enable("clangd")
