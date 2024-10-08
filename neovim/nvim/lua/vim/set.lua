vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.api.nvim_set_option_value("colorcolumn", "120", {})

vim.o.spelllang = 'en_us'
vim.o.spell = false
vim.o.spelloptions = "camel"

vim.api.nvim_set_hl(0, 'SpellBad', { fg = '#ff0000', bg = '#000000', underline=true, reverse=true, standout=true, sp = '#ff0000' })
vim.api.nvim_set_hl(0, 'SpellCap', { fg = '#ffa500', bg = '#000000', undercurl = true, sp = '#ffa500' })
vim.api.nvim_set_hl(0, 'SpellRare', { fg = '#00ff00', bg = '#000000', undercurl = true, sp = '#00ff00' })
vim.api.nvim_set_hl(0, 'SpellLocal', { fg = '#0000ff', bg = '#000000', undercurl = true, sp = '#0000ff' })

local undodir = vim.fn.stdpath('data') .. '/undodir'

if not vim.loop.fs_stat(undodir) then
  vim.fn.mkdir(undodir, 'p')
end

vim.opt.undofile = true
vim.opt.undodir = undodir

vim.opt.undolevels = 1000
vim.opt.undoreload = 10000
