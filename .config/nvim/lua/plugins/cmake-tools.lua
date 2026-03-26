return {
	"Civitasv/cmake-tools.nvim",
	config = function()
		require("cmake-tools").setup({
			cmake_command = "cmake",
			ctest_command = "ctest",
			cmake_use_preset = true,
		})
	end
}
