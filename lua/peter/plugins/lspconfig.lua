return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    { 'antosha417/nvim-lsp-file-operations', config = true },
  },
  config = function()
    -- import lspconfig plugin

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require('cmp_nvim_lsp')

    local opts = { noremap = true, silent = true }
    local k = vim.keymap -- for conciseness
    local on_attach = function(_, bufnr)
      opts.buffer = bufnr

      opts.desc = 'Hover'
      k.set('n', '<leader>K', vim.lsp.buf.hover, opts)

      opts.desc = 'Definition'
      k.set('n', '<leader>gd', vim.lsp.buf.definition, opts)

      opts.desc = 'Type definition'
      k.set('n', '<leader>gt', vim.lsp.buf.type_definition, opts)

      opts.desc = 'Implementation'
      k.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)

      opts.desc = 'References'
      k.set('n', '<leader>gr', '<cmd>Telescope lsp_references<CR>', opts)

      opts.desc = 'Code action'
      k.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)

      opts.desc = 'Rename'
      k.set('n', '<leader>r', vim.lsp.buf.rename, opts)

      opts.desc = 'Next issue'
      k.set('n', '<leader>dn', vim.diagnostic.goto_next, opts)

      opts.desc = 'Previous issue'
      k.set('n', '<leader>dp', vim.diagnostic.goto_prev, opts)

      opts.desc = 'All diagnostics'
      k.set('n', '<leader>dl', '<cmd>Telescope diagnostics<CR>', opts)

      opts.desc = 'Diagnostics'
      k.set('n', '<leader>dd', vim.diagnostic.open_float, opts)
    end

    -- configuratie van servers:
    --   :help lspconfig-all
    --   https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    local l = require('lspconfig')
    local capabilities = cmp_nvim_lsp.default_capabilities()
    for _, server in pairs(require('peter.plugins.lsp.servers')) do
      if server == 'lua_ls' then
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
                -- make language server aware of runtime files
                library = {
                  [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                  [vim.fn.stdpath('config') .. '/lua'] = true,
                },
              },
              -- Do not send telemetry data containing a randomized but unique identifier
              telemetry = {
                enable = false,
              },
            },
          },
        })
      elseif server == 'lemminx' or server == 'tsserver' then
        -- TODO: dit werkt niet meer
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
  end,
}
