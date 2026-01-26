vim.api.nvim_create_user_command("CppNewClass", function(opts)
	local class = opts.args
	if class == "" then
		vim.notify("Usage: :CppNewClass ClassName", vim.log.levels.ERROR)
		return
	end

	-- Validate C++ identifier
	if not class:match("^[A-Za-z_][A-Za-z0-9_]*$") then
		vim.notify("Invalid C++ class name", vim.log.levels.ERROR)
		return
	end

	local root = vim.fn.getcwd()
	local include_dir = root .. "/include"
	local src_dir = root .. "/src"

	-- Ensure directories exist
	vim.fn.mkdir(include_dir, "p")
	vim.fn.mkdir(src_dir, "p")

	local hpp = include_dir .. "/" .. class .. ".hpp"
	local cpp = src_dir .. "/" .. class .. ".cpp"

	if vim.loop.fs_stat(hpp) or vim.loop.fs_stat(cpp) then
		vim.notify("Class files already exist", vim.log.levels.ERROR)
		return
	end

	local guard = (class:upper() .. "_HPP"):gsub("[^A-Z0-9_]", "_")

	-- Header content
	local hpp_content = {
		"#ifndef " .. guard,
		"#define " .. guard,
		"",
		"class " .. class .. " {",
		"private:",
		"",
		"public:",
		"    " .. class .. "();",
		"    ~" .. class .. "();",
		"",
		"};",
		"",
		"#endif // " .. guard,
	}

	-- Source content
	local cpp_content = {
		'#include "' .. class .. '.hpp"',
		"",
		class .. "::" .. class .. "() = default;",
		class .. "::~" .. class .. "() = default;",
	}

	-- Write files
	vim.fn.writefile(hpp_content, hpp)
	vim.fn.writefile(cpp_content, cpp)

	-- Open header (nice UX)
	vim.cmd("edit " .. hpp)

	vim.notify("Created include/" .. class .. ".hpp and src/" .. class .. ".cpp", vim.log.levels.INFO)
end, {
	nargs = 1,
})
