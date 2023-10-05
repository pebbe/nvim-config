-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins

-- zie: :NullLsInfo

return {
	'jose-elias-alvarez/null-ls.nvim',
	config = function()
		local null_ls = require('null-ls')
		local b = null_ls.builtins

		null_ls.setup({
			debug = false,
			sources = {
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
