vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4

-- Font and size
vim.o.guifont = "Fira Nerd Font:h16"

-- Diagnostics
vim.diagnostic.config({
	virtual_text = {
		spacing = 4,
		prefix = "●",
	},
	signs = true,
	underline = true,
	update_in_insert = true,
	severity_sort = true,
})
