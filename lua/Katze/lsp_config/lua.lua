vim.lsp.config["lua"] = {
  cmd = { "lua-language-server" },

  filetypes = { "lua" },

  root_markers = { ".git" }
}

vim.lsp.enable("lua")
