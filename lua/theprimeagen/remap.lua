vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.api.nvim_set_keymap('n', '<leader>m', ':! .\\build.bat<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>r', ':! .\\run.bat<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>d', ':! .\\debug.bat<CR>', { noremap = true, silent = false })

