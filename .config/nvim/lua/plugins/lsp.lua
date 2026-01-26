return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = {
				"clangd",
				"cssls",
				"html",
				"lua_ls",
				"pyright",
				"qmlls",
			},
		})

		-- C/C++
		vim.lsp.config("clangd", {
			cmd = {
				"clangd",
				"--background-index",
				"--clang-tidy",
				"--completion-style=detailed",
				"--header-insertion=iwyu",
				"--function-arg-placeholders",
				"--pch-storage=memory",
				"--offset-encoding=utf-16",
				"--fallback-style=llvm",
			},
		})

		-- CSS
		vim.lsp.config("cssls", {
			cmd = {
				"vscode-css-language-server",
				"--stdio",
			},
			init_options = {
				provideFormatter = true,
			},
		})

		-- html
		vim.lsp.config("html", {
			capabilities = capabilities,
			cmd = {
				"vscode-html-language-server",
				"--stdio",
			},
			filetypes = {
				"html",
			},
			init_options = {
				embeddedLanguages = {
					css = true,
					javascript = true,
				},
				provideFormatter = true,
			},
		})

		-- Lua
		vim.lsp.config("lua_ls", {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				enable = true,
			},
			telemetry = {
				enable = false,
			},
			workspace = {
				checkThirdParty = false,
			},
		})

		-- Python
		vim.lsp.config("pyright", {
			settings = {
				python = {
					analysis = {
						autoSearchPaths = true,
						useLibraryCodeForTypes = true,
						diagnosticMode = "workspace",
					},
				},
			},
		})

		-- qmlls
		vim.lsp.config("qmlls", {
			cmd = {
				"qmlls",
				"-E",
			},
			filetypes = {
				"qml",
				"qmljs",
			},
			root_markers = {
				".git",
			},
			settings = {
				qml = {
					importPaths = {
						"/usr/lib/qt6/qml",
					},
				},
			},
		})
	end,
}
