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
    k.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr })
    k.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
    k.set('n', 'gt', vim.lsp.buf.type_definition, { buffer = bufnr })
    k.set('n', 'gi', vim.lsp.buf.implementation, { buffer = bufnr })
    k.set('n', 'gr', '<CMD>Telescope lsp_references<CR>', { buffer = bufnr })
    k.set('n', '<leader>a', vim.lsp.buf.code_action, { buffer = bufnr })
    k.set('n', '<leader>F', vim.lsp.buf.format, { buffer = bufnr })
    k.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = bufnr })
    k.set('n', '<leader>dn', vim.diagnostic.goto_next, { buffer = bufnr })
    k.set('n', '<leader>dp', vim.diagnostic.goto_prev, { buffer = bufnr })
    k.set('n', '<leader>dl', '<CMD>Telescope diagnostics<CR>', { buffer = bufnr })
end

local l = require('lspconfig')

for _, server in pairs(servers) do
    if server == 'sumneko_lua' then
        l[server].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            }
        })
    elseif server == 'lemminx' then
        l[server].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                xml = {
                    format = {
                        splitAttributes = false,
                        joinCDATALines = false,
                        joinContentLines = false,
                        joinCommentLines = false,
                        spaceBeforeEmptyCloseTag = false,
                    }

                }
            }
        })
    else
        l[server].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
    end
end
