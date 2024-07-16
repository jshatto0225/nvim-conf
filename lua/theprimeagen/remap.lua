
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--vim.keymap.set("n", "<leader><leader>", function()
--    vim.cmd("so")
--end)

vim.api.nvim_set_keymap('n', '<leader>m', ':! cmake --build build<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>r', ':!.\\build\\StakEditor\\StakEditor.exe<CR>', { noremap = true, silent = false })

