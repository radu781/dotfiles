local neotest = require("neotest")
local utils = require("neotest-gtest.utils")
local lib = require("neotest.lib")

neotest.setup({
    adapters = {
        require("neotest-rust") {
            args = { "--no-capture" },
            dap_adapter = "codelldb",
        },
        require("neotest-plenary"),
        require("neotest-gtest").setup({})
    },
})

vim.keymap.set("n", "<leader>qrt", function() neotest.run.run() end, opts, { desc = "run tests" })
