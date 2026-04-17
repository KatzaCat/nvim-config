return {
  "https://github.com/windwp/nvim-autopairs",

  event = "InsertEnter",

  config = function()
    require("nvim-autopairs").setup({
      enable_bracket_in_quote = false
    })
  end
}
