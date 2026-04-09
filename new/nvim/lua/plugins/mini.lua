return {
	'nvim-mini/mini.nvim',
	version = false,
	config = function()
		require 'mini.clue'.setup {}
		require 'mini.cursorword'.setup {}
		require 'mini.indentscope'.setup {}
	end
}
