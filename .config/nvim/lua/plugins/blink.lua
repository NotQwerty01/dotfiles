return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	config = function()
		require("blink.cmp").setup({
			sources = {
				default = {
					"lsp",
					"path",
					"snnipets",
					"buffer",
				},
			},
			keymap = {
				preset = "enter",

				["<S-Tab>"] = { "select_prev", "fallback" },
				["<Tab>"] = { "select_next", "fallback" },
			},
			appearance = { nerd_font_variant = "mono" },
			completion = { documentation = { auto_show = true } },
		})
	end
}
