-- https://vi.stackexchange.com/a/31887
local nv_keymap = function(lhs, rhs)
  vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
  vim.api.nvim_set_keymap('v', lhs, rhs, { noremap = true, silent = true })
end

local nx_keymap = function(lhs, rhs)
  vim.api.nvim_set_keymap('n', lhs, rhs, { silent = true })
  vim.api.nvim_set_keymap('v', lhs, rhs, { silent = true })
end

vim.keymap.set({ 'n' }, "<leader>n", "<cmd>noh<cr>")

nv_keymap('<leader>h', '^')
nv_keymap('<leader>l', '$')
nv_keymap('<leader>a', '%')

nx_keymap('j', 'gj')
nx_keymap('k', 'gk')

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.relativenumber = true
vim.wo.number = true
