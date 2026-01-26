return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	opts = function()
		require("nvim-treesitter").install({
			"cpp",
			"python",
		})
	end,
}
