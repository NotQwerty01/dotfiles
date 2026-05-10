vim.opt.termguicolors = true
vim.opt.winborder = 'rounded'

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = false
vim.opt.autoindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '100'
vim.opt.showmatch = true
vim.opt.cmdheight = 1
vim.opt.completeopt = 'menuone,noinsert,noselect'
vim.opt.pumheight = 10
vim.opt.pumblend = 10
vim.opt.winblend = 0
vim.opt.conceallevel = 0
vim.opt.concealcursor = ''
vim.opt.lazyredraw = true
vim.opt.fillchars = { eob = ' ' }

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.autoread = true
vim.opt.autowrite = true

vim.opt.errorbells = false
vim.opt.backspace = 'indent,eol,start'
vim.opt.selection = 'inclusive'
vim.opt.encoding = 'utf-8'

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wildmenu = true
vim.opt.wildmode = 'longest:full,full'
vim.opt.redrawtime = 20000
vim.opt.maxmempattern = 30000

vim.diagnostic.config({
	underline = true,
	update_in_insert = true,
})

-- vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
-- 	callback = function()
-- 		local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
-- 		if not normal.bg then return end
-- 		io.write(string.format("\027]11;#%06x\027\\", normal.bg))
-- 	end,
-- })
--
-- vim.api.nvim_create_autocmd("UILeave", {
-- 	callback = function() io.write("\027]111\027\\") end,
-- })
