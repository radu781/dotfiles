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

-- J doesn't move cursor
vim.keymap.set("n", "J", "mzJ`z")

-- center screen after C-d/u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- center screenafter find
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yank into system clipboard
vim.keymap.set("v", "<leader>y", "\"*y")
vim.keymap.set("v", "<leader>Y", "\"*Y")
vim.keymap.set("n", "<leader>Y", "\"*yy")

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.relativenumber = true
vim.wo.number = true
