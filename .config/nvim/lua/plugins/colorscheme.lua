return {
	{
		"uhs-robert/oasis.nvim",
		config = function()
			require("oasis").setup({
				transparent = true,
				highlight_overrides = {
					["@Keyword.return"] = { bold = true },
				}
			})
			vim.cmd("colorscheme oasis-abyss")
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = { theme = "auto" },
			})
		end
	},

}
