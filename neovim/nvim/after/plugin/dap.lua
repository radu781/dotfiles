local dap = require("dap")
local dapui = require("dapui")

dapui.setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

vim.keymap.set("n", "<leader>dt", ':DapToggleBreakpoint<cr>')
vim.keymap.set("n", "<leader>dx", ':DapTerminate<cr>')
vim.keymap.set("n", "<leader>do", ':DapStepOver<cr>')
vim.keymap.set("n", "<leader>dO", ':DapStepOut<cr>')

require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")

dap.configurations.python = {
    {
        type = 'python',
        request = 'launch',
        name = "Launch file",
        program = "${file}",
        pythonPath = function()
            return '/usr/bin/python'
        end,
    },
}
-- dap.adapters.codelldb = {
--     type = "executable",
--     command = "C:\\Users\\Radu\\AppData\\Local\\nvim-data\\mason\\packages\\codelldb\\extension\\adapter\\codelldb.exe",
--     name = "lldb",
-- }



dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
        command = "C:\\Users\\Radu\\AppData\\Local\\nvim-data\\mason\\packages\\codelldb\\extension\\adapter\\codelldb.exe",
        args = { "--port", "${port}" },
    }
}

dap.configurations.cpp = {
    {
        name = 'Launch',
        type = 'codelldb',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},

        -- 💀
        -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
        --
        --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
        --
        -- Otherwise you might get the following error:
        --
        --    Error on launch: Failed to attach to the target process
        --
        -- But you should be aware of the implications:
        -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
        -- runInTerminal = false,
    },
}

dap.configurations.rust = {
    {
        name = "Launch",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
    },
}
