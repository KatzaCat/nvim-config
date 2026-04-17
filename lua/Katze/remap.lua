vim.g.mapleader = ";"

vim.keymap.set("n", "<leader>ef", vim.cmd.Ex)
vim.keymap.set("n", "<leader>lz", vim.cmd.Lazy)

-- Opening a termanal
vim.keymap.set("n", "<leader>te", ":botright ter<CR>")
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })
