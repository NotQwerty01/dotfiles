vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.winborder = "rounded"

-- Diagnostics
vim.diagnostic.config({
	float = {
		border = "single",
		focusable = true,
		style = "minimal",
		source = "always",
		header = "",
		prefix = "  ",
	},
	virtual_text = {
		prefix = "󱅶 ",
	},
	underline = true,
	update_in_insert = true,
})

-- Colors for diagnostic
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		local hl = vim.api.nvim_set_hl

		hl(0, "DiagnosticVirtualTextError", { fg = "#f7768e", italic = true })
		hl(0, "DiagnosticVirtualTextWarn", { fg = "#e0af68", italic = true })
		hl(0, "DiagnosticVirtualTextInfo", { fg = "#7aa2f7", italic = true })
		hl(0, "DiagnosticVirtualTextHint", { fg = "#9ece6a", italic = true })

		hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#f7768e" })
		hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#e0af68" })
		hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "#7aa2f7" })
		hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "#9ece6a" })
	end,
})
