return {
	{
		"slugbyte/lackluster.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require 'lackluster'.setup {
				tweak_background = {
					normal = 'none',
					telescope = 'none',
				}
			}
			vim.cmd 'colorscheme lackluster-mint'
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require 'lualine'.setup {
				options = { theme = "auto" }
			}
		end
	},
}
