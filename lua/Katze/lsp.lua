vim.filetype.add({
  extension = {
    h = "c",
    hpp = "cpp"
  }
})

require("Katze.lsp_config.clangd")
require("Katze.lsp_config.ols")
require("Katze.lsp_config.lua")
require("Katze.lsp_config.cmake")
require("Katze.lsp_config.c3")
