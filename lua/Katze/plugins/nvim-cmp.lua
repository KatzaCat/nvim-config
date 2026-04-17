return {
  "https://github.com/hrsh7th/nvim-cmp",

  dependencies = {
    "https://github.com/hrsh7th/cmp-nvim-lsp",
    "https://github.com/hrsh7th/cmp-buffer",
    "https://github.com/hrsh7th/cmp-path",
    "https://github.com/hrsh7th/cmp-cmdline"
  },

  config = function()
    local cmp = require("cmp") 

    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body)
        end
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_next_item(),
        ["<C-j>"] = cmp.mapping.select_prev_item(),
        ['<C-h>'] = cmp.mapping.scroll_docs(-4),
        ['<C-l>'] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true })
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }
      }, {
        { name = "buffer" }
      })
    })
  end
}
