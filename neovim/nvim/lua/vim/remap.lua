vim.api.nvim_set_keymap('n', '<leader>ft', ':Ex<CR>', { noremap = true, silent = true })

-- move selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

