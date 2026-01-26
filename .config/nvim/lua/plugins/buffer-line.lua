return {
	'akinsho/bufferline.nvim',
	version = "*", 
	dependencies = 'nvim-tree/nvim-web-devicons',
	opts = function()
		require("bufferline").setup({
			options = {
				separator_style = { "slope", "thick" },
				diagnostics = "nvim_lsp",
			}
		})
	end
}
