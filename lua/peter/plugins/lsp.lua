-- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
local servers = {
	'clangd', -- C, C++
	'gopls', -- Go
	'html', -- HTML
	'lemminx', -- XML
	'pyright', -- Python
	'sumneko_lua', -- Lua
	'svelte', -- Svelte
	'tsserver', -- JavaScript, TypeScript
	'vls', -- V
	'zls', -- Zig
}

require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = servers,
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(_, bufnr)
	local k = vim.keymap
	k.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr, desc = 'Hover' })
	k.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, desc = 'Definition' })
	k.set('n', 'gt', vim.lsp.buf.type_definition, { buffer = bufnr, desc = 'Type definition' })
	k.set('n', 'gi', vim.lsp.buf.implementation, { buffer = bufnr, desc = 'Implementation' })
	k.set('n', 'gr', '<CMD>Telescope lsp_references<CR>', { buffer = bufnr, desc = 'References' })
	k.set('n', '<leader>a', vim.lsp.buf.code_action, { buffer = bufnr, desc = 'Code action' })
	k.set('n', '<leader>F', vim.lsp.buf.format, { buffer = bufnr, desc = 'Format' })
	k.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = bufnr, desc = 'Rename' })
	k.set('n', '<leader>dn', vim.diagnostic.goto_next, { buffer = bufnr, desc = 'Next issue' })
	k.set('n', '<leader>dp', vim.diagnostic.goto_prev, { buffer = bufnr, desc = 'Previous issue' })
	k.set('n', '<leader>dl', '<CMD>Telescope diagnostics<CR>', { buffer = bufnr, desc = 'All diagnostics' })
  k.set('n', '<leader>dd', vim.diagnostic.open_float, { buffer = bufnr, desc = 'Diagnostics' } )
end

local l = require('lspconfig')

-- configuratie van servers:
--   :help lspconfig-all
--   https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

for _, server in pairs(servers) do
	if server == 'sumneko_lua' then
		l[server].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					runtime = {
						-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
						version = 'LuaJIT',
					},
					diagnostics = {
						-- Get the language server to recognize the `vim` global
						globals = { 'vim' },
					},
					workspace = {
						-- Make the server aware of Neovim runtime files
						-- library = vim.api.nvim_get_runtime_file("", true), -- ???
					},
					-- Do not send telemetry data containing a randomized but unique identifier
					telemetry = {
						enable = false,
					},
				},
			},
		})
	elseif server == 'lemminx' or server == 'tsserver' then
		local cap = require('cmp_nvim_lsp').default_capabilities()
		cap.document_formatting = false
		l[server].setup({
			capabilities = cap,
			on_attach = on_attach,
		})
	else
		l[server].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
	end
end
