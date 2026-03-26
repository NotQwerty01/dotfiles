return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake",
		},
	},
	config = function()
		vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
		vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep)
		vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags)
		require("telescope").setup({
			pickers = { find_files = { hidden = true, }, },
		})
	end
}
