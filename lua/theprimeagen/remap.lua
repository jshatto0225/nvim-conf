
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--vim.keymap.set("n", "<leader><leader>", function()
--    vim.cmd("so")
--end)

vim.api.nvim_set_keymap('n', '<leader>m', ':! .\\scripts\\build.bat<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>r', ':! .\\scripts\\run.bat<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>d', ':! .\\scripts\\debug.bat<CR>', { noremap = true, silent = false })

