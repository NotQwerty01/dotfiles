return {
	{
		'rose-pine/neovim',
		lazy = false,
		priority = 1000,
		config = function()
			require 'rose-pine'.setup {
				variant = 'main',
				dark_variant = 'main',
				styles = {
					bold = true,
					italic = true,
					transparency = true,
				}
			}
			vim.cmd 'colorscheme rose-pine'
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
