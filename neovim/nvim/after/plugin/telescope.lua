local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "fuzzy find file names" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "find buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "find help" })
vim.keymap.set('n', '<leader>fsd', builtin.lsp_document_symbols, { desc = "find symbols in document" })
vim.keymap.set('n', '<leader>fsw', builtin.lsp_workspace_symbols, { desc = "find symbols in workspace" })
vim.keymap.set('n', '<leader>fgg', builtin.live_grep, { desc = "grep in git workspace" })
vim.keymap.set('n', '<leader>fgw', builtin.grep_string, { desc = "grep in workspace" })

vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = "git commits with diff" })
vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = "git branches" })
vim.keymap.set('n', '<leader>gs', builtin.git_commits, { desc = "git status" })
-- vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = "list git commits with diff" })
