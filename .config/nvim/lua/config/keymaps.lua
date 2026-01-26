vim.g.mapleader = " "
vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>")
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")

-- Navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus up window" })

-- Neotree
vim.keymap.set("n", "<leader>nc", ":Neotree close<CR>", { desc = "Close Neotree" })
vim.keymap.set("n", "<leader>no", ":Neotree<CR>", { desc = "Open Neotree" })

-- Python
vim.keymap.set("n", "<leader>pr", ":split | terminal python %<CR>", { desc = "Run Python file" })

-- C++ build
vim.keymap.set("n", "<leader>cb", ":!cmake --build build/debug<CR>", { desc = "Build C++ file" })

-- C++ Run
vim.keymap.set("n", "<leader>cr", function()
	vim.cmd("split | terminal ./build/debug/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t"))
end, { desc = "C++ run (debug)" })

-- Bufferline
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Close current buffer" })

-- LSP
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to references" })
