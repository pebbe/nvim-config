-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins

-- zie: :NullLsInfo

return {
	'jose-elias-alvarez/null-ls.nvim',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		local null_ls = require('null-ls')
		local b = null_ls.builtins
		local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
		null_ls.setup({
			on_attach = function(client, bufnr)
				if client.supports_method('textDocument/formatting') then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd('BufWritePre', {
						group = augroup,
						buffer = bufnr,
						callback = function()
							-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
							-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
							vim.lsp.buf.format({ async = false })
						end,
					})
				end
			end,
			debug = false,
			sources = {
				b.formatting.gofmt,
				b.formatting.stylua.with({ extra_args = { '--quote-style', 'AutoPreferSingle' } }),
				-- b.diagnostics.eslint,
				-- b.completion.spell,
				b.formatting.xmllint,
				b.formatting.prettier.with({
					extra_args = { '--no-semi', '--single-quote' },
					filetypes = {
						-- 'lua',
						'luau',
						'xml',
						'css',
						'javascript',
						'javascriptreact',
						'less',
						'typescriptreact',
						'typescript',
						'json',
						'html',
						'graphql',
						'yaml',
						'markdown.mdx',
						-- 'markdown',
						'jsonc',
						'handlebars',
						'vue',
						'scss',
						'python',
					},
				}),
				b.formatting.yapf,
				b.diagnostics.flake8,
			},
		})
	end,
}
