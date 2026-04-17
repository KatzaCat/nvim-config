vim.lsp.config["cmake"] = {
  cmd = { "neocmakelsp", "stdio" },

  filetypes = { "cmake" },

  root_markers = { "CMakeLists.txt" }
}

vim.lsp.enable("cmake")
