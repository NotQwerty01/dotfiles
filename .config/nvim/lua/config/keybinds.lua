vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "gr", vim.lsp.buf.references)

-- Buffer navigation
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { desc = "Prev buffer" })

vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Close buffer" })

vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, { desc = "LSP Hover" })

-- C++ actions
-- C++: build (debug)
vim.keymap.set("n", "<leader>cb", function()
	vim.cmd("!cmake --build build/debug")
end, { desc = "C++ build (debug)" })

-- C++: run
vim.keymap.set("n", "<leader>cr", function()
	vim.cmd("split | terminal ./build/debug/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t"))
end, { desc = "C++ run (debug)" })

-- C++: build + run
vim.keymap.set("n", "<leader>cx", function()
	vim.cmd("!cmake --build build/debug")
	vim.cmd("split | terminal ./build/debug/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t"))
end, { desc = "C++ build & run" })

-- Neo-Tree
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus up window" })

-- Python run
vim.keymap.set("n", "<leader>rp", function()
	vim.cmd("split | terminal python %")
end, { desc = "Run Python file" })

-- Neo-Tree
vim.keymap.set("n", "<leader>nc", function()
	vim.cmd("Neotree close")
end, { desc = "Close Neotree" })
