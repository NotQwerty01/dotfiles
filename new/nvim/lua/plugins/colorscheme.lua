return {
	{
		'tiagovla/tokyodark.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			require 'tokyodark'.setup {
				transparent_background = true,
				gamma = 0.7,
				styles = {
					comments = {
						italic = true,
						bold = true,
					},
					keywords = {
						italic = true,
						bold = true,
					},
					identifiers = { italic = true },
					functions = {},
					variables = {},
				},
				terminal_colors = true
			}
			vim.cmd 'colorscheme tokyodark'
		end
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require 'lualine'.setup {
				options = { theme = "auto" }
			}
		end
	},
}
