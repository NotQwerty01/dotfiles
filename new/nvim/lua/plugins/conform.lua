return {
	'stevearc/conform.nvim',
	config = function()
		require 'conform'.setup {
			formaters_by_ft = {
				c = { 'clang-format' },
				cpp = { 'clang-format' },
				css = { 'conform' },
				html = { 'prettier' },
				lua = { 'stylua' },
				python = { 'black' },
				typescript = { 'prettier' },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		}
	end
}
