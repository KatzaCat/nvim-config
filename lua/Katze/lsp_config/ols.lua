vim.lsp.config["ols"] = {
  cmd = { "ols" },

  filetypes = { "odin" }, 

  root_markers = { ".git" }
}

vim.lsp.enable("ols")
