local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
    local opts = { buffer = bufnr, noremap = true, silent = true }
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts, { desc = "go to definition" })
    vim.keymap.set("n", "gh", function() vim.lsp.buf.hover() end, opts, { desc = "hover float" })
    vim.keymap.set('n', 'gs', function() vim.lsp.buf.signature_help() end, opts, { desc = "go to signature" })
    -- TODO: seems broken
    vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts, { desc = "go to implementation" })

    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts, { desc = "code action" })

    vim.keymap.set('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts, { desc = "rename symbol" })
    -- use conform instead
    -- vim.keymap.set('n', '<leader>fr', function() vim.lsp.buf.format() end, opts, { desc = "file format" })

    require("lsp_signature").on_attach({}, bufnr)
end)

vim.keymap.set("n", "<leader>ec", function() vim.diagnostic.open_float() end, { desc = "current line diagnostic" })
vim.keymap.set("n", "<leader>en", function() vim.diagnostic.goto_next() end, { desc = "next diagnostic" })
vim.keymap.set("n", "<leader>ep", function() vim.diagnostic.goto_prev() end, { desc = "previous diagnostic" })

require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        lsp_zero.default_setup,
    },
})

require("lspconfig").dartls.setup({
    -- path to flutter sdk
    cmd = { "C:\\Users\\Radu\\Documents\\flutter\\bin\\cache\\dart-sdk\\bin\\dart.exe", "language-server", "--protocol=lsp" }
})

local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " ", Other = "󰼈 " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- local icons = {
--     Class = " ",
--     Color = " ",
--     Constant = " ",
--     Constructor = " ",
--     Enum = " ",
--     EnumMember = " ",
--     Field = "󰄶 ",
--     File = " ",
--     Folder = " ",
--     Function = " ",
--     Interface = "󰜰",
--     Keyword = "󰌆 ",
--     Method = "ƒ ",
--     Module = "󰏗 ",
--     Property = " ",
--     Snippet = "󰘍 ",
--     Struct = " ",
--     Text = " ",
--     Unit = " ",
--     Value = "󰎠 ",
--     Variable = " ",
-- }


-- local kinds = vim.lsp.protocol.CompletionItemKind
-- for i, kind in ipairs(kinds) do
--     kinds[i] = icons[kind] or kind
-- end

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,        -- see exactly where the problem is
    update_in_insert = true, -- diagnostics update in insert mode as you type
    severity_sort = true,
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
})

lsp_zero.set_preferences({
})
