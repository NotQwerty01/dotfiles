return {
	'ingur/floatty.nvim',

	config = function()
		vim.cmd "highlight NormalFloat guibg='none'"
		vim.cmd "highlight FloatBorder guibg='none'"
		local term = require 'floatty'.setup {
		}

		vim.keymap.set('n', '<C-t>', function() term.toggle() end)
		vim.keymap.set('t', '<C-t>', function() term.toggle() end)
	end
}
