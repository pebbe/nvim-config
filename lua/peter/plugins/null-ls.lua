local null_ls_status_ok, null_ls = pcall(require, 'null-ls')
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics

null_ls.setup({
	debug = false,
	sources = {
		null_ls.builtins.formatting.stylua.with({ extra_args = { '--quote-style', 'AutoPreferSingle' } }),
		null_ls.builtins.diagnostics.eslint,
		-- null_ls.builtins.completion.spell,
		-- null_ls.builtins.fformatting.prettier.with { extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } },
		-- null_ls.builtins.fformatting.black.with { extra_args = { "--fast" } },
		-- null_ls.builtins.fformatting.yapf,
		-- null_ls.builtins.fdiagnostics.flake8,
	},
})
