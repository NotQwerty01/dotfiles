return {
	'nvim-treesitter/nvim-treesitter',
	branch = 'master',
	lazy = false,
	build = ':TSUpdate',
	config = function()
		require 'nvim-treesitter.configs'.setup {
			auto_install = true,
			ensure_installed = {
				'c',
				'cpp',
				'css',
				'json',
				'lua',
				'python',
			},
			sync_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		}
	end
}
