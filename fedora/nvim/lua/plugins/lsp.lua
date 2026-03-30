return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config("clangd", {
			cmd = {
				"clangd",
				"--background-index",
				"--clang-tidy",
				"--completion-style=detailed",
				"--header-insertion=iwyu",
				"--function-arg-placeholders",
				"--pch-storage=memory",
				"--offset-encoding=utf-8",
				"--fallback-style=llvm",
				"--query-driver=C:/msys64/mingw64/bin/g++.exe"
			}
		})

		vim.lsp.config("css_variables", {
			cmd = {
				"css-variable-language-server",
				"--stdio",
			},
			filetypes = {
				"css",
				"scss",
				"less",
			},
			settings = {
				{
					cssVariables = {
						blacklistFolders = {
							"**/.cache",
							"**/.DS_Store",
							"**/.git",
							"**/.hg",
							"**/.next",
							"**/.svn",
							"**/bower_components",
							"**/CVS",
							"**/dist",
							"**/node_modules",
							"**/tests",
							"**/tmp",
						},
						lookupFiles = {
							"**/*.less",
							"**/*.scss",
							"**/*.sass",
							"**/*.css",
						},
					},
				},
			},
		})

		vim.lsp.config("cssls", {
			cmd = {
				"vscode-css-language-server",
				"--stdio",
			},
			filetypes = {
				"css",
				"scss",
				"less",
			},
			init_options = { provideFormatter = true },
			root_markers = {
				"package.json",
				".git,"
			},
			settings = {
				css =  { validate = true },
				scss = { validate = true },
				less = { validate = true },
			},
		})

		vim.lsp.config("cssmodules_ls", {
			cmd = { "cssmodules-language-server" },
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
			},
			root_markers = { "package.json" },
		})

		vim.lsp.config("html" ,{
			cmd = {
				"vscode-html-language-server",
				"--stdio",
			},
			filetypes = { "html" },
			init_options = {
				configurationSection = {
					"html",
					"css",
					"javascript",
				},
				embeddedLanguages = {
					css = true,
					javascript = true,
				},
				provideFormatter = true
			},
			root_markers = {
				"package.json",
				".git",
			},
		})

		vim.lsp.config("jsonls", {
			cmd = {
				"vscode-json-language-server",
				"--stdio",
			},
			filetypes = {
				"json",
				"jsonc",
			},
			init_options = { provideFormatter = true },
			root_markers = { ".git" },
		})

		vim.lsp.config("lua_ls", {
			cmd = { "lua-language-server" },
			filetypes = { "lua" },
			settings = {
				Lua = {
					codeLens = { enable = true },
					hint = {
						enable = true,
						semicolon = "Disable",
					},
				},
			},
		})

		vim.lsp.config("pyright", {
			cmd = {
				"pyright-langserver",
				"--stdio",
			},
			filetypes = { "python" },
			root_markers = {
				"pyrightconfig.json",
				"pyproject.toml",
				"setup.py",
				"setup.cfg",
				"requirements.txt",
				"Pipfile",
				".git"
			},
			settings = {
				python = {
					analysis = {
						disableOrganizeImports = false,
						autoImportCompletions = true,
						autoSearchPaths = true,
						diagnosticMode = "openFilesOnly",
						useLibraryCodeForTypes = true,
					}
				}
			}
		})

		vim.lsp.config("ts_ls", {
			cmd = {
				"typescript-language-server",
				"--stdio"
			},
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
			},
			init_options = {
				hostInfo = "neovim",
				preferences = {
					quotePreference = "double",
					includeInlayParameterNameHints = "all",
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = true,
				},
			},
		})

		vim.lsp.enable({
			"bashls",
			"clangd",
			"css_variables",
			"cssls",
			"cssmodules_ls",
			"html",
			"jsonls",
			"lua_ls",
			"pyright",
			"ts_ls",
		})

	end
}
