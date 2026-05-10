return {
	{
		'ellisonleao/gruvbox.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			require 'gruvbox'.setup { transparent_mode = true }
			vim.cmd 'colorscheme gruvbox'
		end
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			local custom_gruvbox = require 'lualine.themes.gruvbox'

			custom_gruvbox.normal.a.bg = "#333333"
			custom_gruvbox.normal.b.bg = "#222222"
			custom_gruvbox.normal.c.bg = "#000000"

			custom_gruvbox.normal.a.fg = "#ebdbb2"

			custom_gruvbox.insert.a.bg = "#fb4934"
			custom_gruvbox.insert.b.bg = "#222222"
			custom_gruvbox.insert.c.bg = "#000000"

			custom_gruvbox.insert.c.fg = "#a89984"

			custom_gruvbox.visual.a.bg = "#d79921"
			custom_gruvbox.visual.b.bg = "#222222"
			custom_gruvbox.visual.c.bg = "#000000"

			custom_gruvbox.visual.c.fg = "#a89984"

			custom_gruvbox.replace.a.bg = "#458588"
			custom_gruvbox.replace.b.bg = "#222222"
			custom_gruvbox.replace.c.bg = "#000000"

			custom_gruvbox.replace.c.fg = "#a89984"

			custom_gruvbox.command.a.bg = "#98971a"
			custom_gruvbox.command.b.bg = "#222222"
			custom_gruvbox.command.c.bg = "#000000"

			custom_gruvbox.command.c.fg = "#a89984"

			require 'lualine'.setup {
				options = { theme = custom_gruvbox }
			}
		end
	},
}
