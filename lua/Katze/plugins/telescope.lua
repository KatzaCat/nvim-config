return {
  'nvim-telescope/telescope.nvim', 

  version = '*',

  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  config = function()
    require("telescope").setup({})

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files)
    vim.keymap.set("n", "<leader>gf", builtin.git_files)

    vim.keymap.set("n", "<leader>gs", function()
      builtin.grep_string({ search = vim.fn.input("grep: ") })
    end)

  end
}
