return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
    },
    config = function ()
        local dap = require('dap')
        local dapui = require('dapui')

        require("dapui").setup()
        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
        dap.configurations.c = {
            {
                name = "Launch file",
                type = "codelldb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
            },
        }
        dap.adapters.codelldb = {
            type = 'server',
            host = '127.0.0.1',
            port = 13000,
            executable = {    -- CHANGE THIS to your path!
                -- CHANGE THIS to your path!
                command = '/absolute/path/to/codelldb/extension/adapter/codelldb',
                args = {"--port", "${port}"},
            }
        }
        vim.keymap.set('n', "<leader>dt", dap.toggle_breakpoint, { desc = "toggle breakpoint" })
        vim.keymap.set('n', "<leader>dc", dap.continue, { desc = "init/continue debug" })
        vim.keymap.set('n', '<leader>dn', dap.step_over, { desc = "step over" })
        vim.keymap.set('n', '<leader>ds', dap.step_into, { desc = "step into" })
        vim.keymap.set('n', '<leader>do', dap.step_out, { desc = "step out" })
    end,
}
