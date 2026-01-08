local dap = require("dap")
local dapui = require("dapui")

-- UI setup
dapui.setup()

dap.listeners.after.event_initialized["dapui"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui"] = function()
	dapui.close()
end

-- LLDB adapter (Arch Linux)
dap.adapters.lldb = {
	type = "executable",
	command = "lldb-dap",
	name = "lldb",
}

-- C / C++ configuration
dap.configurations.cpp = {
	{
		name = "Launch C++ (LLDB)",
		type = "lldb",
		request = "launch",
		program = function()
			local cwd = vim.fn.getcwd()
			local build_dir = cwd .. "/build/debug"

			local handle = io.popen("ls " .. build_dir)
			if not handle then
				error("Build directory not found: " .. build_dir)
			end

			for file in handle:lines() do
				local path = build_dir .. "/" .. file
				if vim.fn.executable(path) == 1 then
					handle:close()
					return path
				end
			end

			handle:close()
			error("No executable found in " .. build_dir)
		end,

		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		args = {},
	},
}

dap.configurations.c = dap.configurations.cpp

-- Keymaps
vim.keymap.set("n", "<F5>", dap.continue, { desc = "DAP continue" })
vim.keymap.set("n", "<F10>", dap.step_over, { desc = "DAP step over" })
vim.keymap.set("n", "<F11>", dap.step_into, { desc = "DAP step into" })
vim.keymap.set("n", "<F12>", dap.step_out, { desc = "DAP step out" })
vim.keymap.set("n", "<leader>br", dap.toggle_breakpoint, { desc = "DAP breakpoint" })
vim.keymap.set("n", "<leader>dq", dap.terminate, { desc = "DAP quit" })
