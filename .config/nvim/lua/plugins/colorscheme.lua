local function enable_transparency()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_foreground = "original"
			vim.g.gruvbox_material_transparent_background = 0
			vim.g.gruvbox_material_ui_contrast = "high"
			vim.g.gruvbox_material_enable_italic = true
			vim.cmd.colorscheme("gruvbox-material")
			enable_transparency()

			-- CMP transparency
			vim.api.nvim_set_hl(0, "NormalFloat", {
				bg = "#1d2021"
			})

			vim.api.nvim_set_hl(0, "FloatBorder", {
				bg = "#1d2021",
				fg = "#a89984",
			})

			vim.api.nvim_set_hl(0, "CmpDocumentation", {
				bg = "#1d2021",
			})

			vim.api.nvim_set_hl(0, "CmpDocumentationBorder", {
				bg = "#1d2021",
			})

		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
				},
			})
		end,
	},
}
