return {
	'neovim/nvim-lspconfig',
	config = function()
		vim.lsp.config("clangd", {
			cmd = {
				'clangd',
				'--background-index',
				'--clang-tidy',
				'--completion-style=detailed',
				'--header-insertion=iwyu',
				'--function-arg-placeholders',
				'--pch-storage=memory',
				'--offset-encoding=utf-8',
				'--fallback-style=llvm',
			}
		})

		vim.lsp.config('cssls', {
			cmd = {
				'vscode-css-language-server',
				'--stdio',
			},
			filetypes = {
				'css',
				'scss',
				'less',
			},
			init_options = { provideFormatter = true },
		})

		vim.lsp.config('jsonls', {
			cmd = {
				'vscode-json-language-server',
				'--stdio',
			},
			filetypes = {
				'json',
				'jsonc',
			},
			init_options = { provideFormatter = true },
		})

		vim.lsp.config('lua_ls', {
			cmd = { 'lua-language-server' },
			filetypes = { 'lua' },
			settings = {
				Lua = {
					codeLens = { enable = true },
					hint = {
						enable = true,
						semicolon = 'Disable',
					},
				},
			},
		})

		vim.lsp.config('pyright', {
			cmd = {
				'pyright-langserver',
				'--stdio',
			},
			filetypes = { 'python' },
			root_markers = {
				'pyrightconfig.json',
				'pyproject.toml',
				'setup.py',
				'setup.cfg',
				'requirements.txt',
				'Pipfile',
				'.git'
			},
			settings = {
				python = {
					analysis = {
						disableOrganizeImports = false,
						autoImportCompletions = true,
						autoSearchPaths = true,
						diagnosticMode = 'openFilesOnly',
						useLibraryCodeForTypes = true,
					}
				}
			}
		})

		vim.lsp.enable {
			'clangd',
			'cssls',
			'jsonls',
			'lua_ls',
			'pyright',
		}
	end
}
