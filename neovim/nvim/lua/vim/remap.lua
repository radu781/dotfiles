-- move selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>qp", "<cmd>:cprev<cr>" , { desc = "quick fix list prev" })
vim.keymap.set("n", "<leader>qn", "<cmd>:cnext<cr>" , { desc = "quick fix list next" })
vim.keymap.set("n", "<leader>qq", "<cmd>:cclose<cr>" , { desc = "quick fix list close" })
vim.keymap.set("n", "<leader>qo", "<cmd>:copen<cr>" , { desc = "quick fix list open" })

--require 'nvim-treesitter.install'.compilers = { "clang" }
