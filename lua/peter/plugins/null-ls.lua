local null_ls_status_ok, null_ls = pcall(require, 'null-ls')
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins

-- zie: :NullLsInfo

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
				'lua',
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
