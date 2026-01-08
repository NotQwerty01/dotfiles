local function write_file(path, content)
	if vim.fn.filereadable(path) == 1 then
		vim.notify("File exists: " .. path, vim.log.levels.WARN)
		return
	end
	vim.fn.mkdir(vim.fn.fnamemodify(path, ":h"), "p")
	local f = io.open(path, "w")
	if f then
		f:write(content)
		f:close()
	end
end

vim.api.nvim_create_user_command("CppNew", function(opts)
	local name = opts.args
	if name == "" then
		vim.notify("Usage: :CppNew ClassName", vim.log.levels.ERROR)
		return
	end

	local hpp = "include/" .. name .. ".hpp"
	local cpp = "src/" .. name .. ".cpp"

	write_file(
		hpp,
		string.format(
			[[
#pragma once

class %s {
public:
    %s();
};
]],
			name,
			name
		)
	)

	write_file(
		cpp,
		string.format(
			[[
#include "%s.hpp"

%s::%s() {
}
]],
			name,
			name,
			name
		)
	)

	vim.cmd.edit(hpp)
end, { nargs = 1 })
