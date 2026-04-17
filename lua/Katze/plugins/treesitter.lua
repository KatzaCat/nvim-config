return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',

  config = function()
    require("nvim-treesitter").setup({
      install_dir = vim.fn.stdpath('data') .. '/site'
    })

    require('nvim-treesitter').install({
      -- Documentation
      'markdown',
      'vimdoc',

      -- Languages
      'bash',
      'c',
      'c3',
      'cpp',
      'hlsl',
      'json',
      'lua',
      'odin',
      'zig',

      -- Config Files
      'cmake',
      'gitignore',
      'make',
      'vim',
    })

    vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
      callback = function()
					if vim.bo.buftype ~= "" then
						return
					end

					pcall(vim.treesitter.start, 0)
				end
    })
  end
}
