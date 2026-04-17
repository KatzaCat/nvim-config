return {
  "https://github.com/hrsh7th/vim-vsnip",

  dependencies = {
    "https://github.com/hrsh7th/vim-vsnip-integ",
    "https://github.com/hrsh7th/vim-vsnip"
  },

  config = function()
    vim.keymap.set("i", "<C-j>", function() vim.fn["vsnip#expandable"]() end) 
    vim.keymap.set("i", "<C-Tab>", function() vim.fn["vsnip#jumpable"](1) end)
    vim.keymap.set("i", "<S-Tab>", function() vim.fn["vsnip#jumpable"](-1) end)
  end
}
