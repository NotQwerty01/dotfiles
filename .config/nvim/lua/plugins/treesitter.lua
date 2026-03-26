return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"css",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"python",
				"typescript",
				"vim",
				"vimdoc",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end
}
