return {
	{
		"mfussenegger/nvim-dap",
		dependencies = { "nvim-neotest/nvim-nio" },
		config = function()
			local dap = require("dap")

			dap.adapters.lldb = {
				type = "executable",
				command = "lldb-vscode",
				name = "lldb",
			}

			dap.configurations.cpp = {
				{
					name = "Launch",
					type = "lldb",
					request = "launch",
					program = function()
						return vim.fn.getcwd() .. "/build/debug/my_project"
					end,
					cwd = "${workspaceFolder}",
					stopOnEntry = false,
					args = {},
				},
			}

			dap.configurations.c = dap.configurations.cpp
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			require("dapui").setup()
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
		config = function()
			require("dap-python").setup(".venv/bin/python")
		end,
	},
}
