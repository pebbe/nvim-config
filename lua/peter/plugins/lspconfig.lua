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

    local on_attach = function(_, bufnr)
      local k = vim.keymap
      local d = function(txt)
        return { noremap = true, silent = true, buffer = bufnr, desc = txt }
      end
      k.set('n', '<leader>K', vim.lsp.buf.hover, d('Hover'))
      k.set('n', '<leader>gd', vim.lsp.buf.definition, d('Definition'))
      k.set('n', '<leader>gt', vim.lsp.buf.type_definition, d('Type definition'))
      k.set('n', '<leader>gi', vim.lsp.buf.implementation, d('Implementation'))
      k.set('n', '<leader>gr', '<cmd>Telescope lsp_references<CR>', d('References'))
      k.set('n', '<leader>ca', vim.lsp.buf.code_action, d('Code action'))
      k.set('n', '<leader>r', vim.lsp.buf.rename, d('Rename'))
      k.set('n', '<leader>dn', function()
        vim.diagnostic.jump({ count = 1, float = true })
      end, d('Next issue'))
      k.set('n', '<leader>dp', function()
        vim.diagnostic.jump({ count = -1, float = true })
      end, d('Previous issue'))
      k.set('n', '<leader>dl', '<cmd>Telescope diagnostics<CR>', d('All diagnostics'))
      k.set('n', '<leader>dd', vim.diagnostic.open_float, d('Diagnostics'))
    end

    -- configuratie van servers:
    --   :help lspconfig-all
    --   https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    local capabilities = cmp_nvim_lsp.default_capabilities()
    for _, server in pairs(require('peter.plugins.lsp.servers')) do
      if server == 'lua_ls' then
        vim.lsp.config(server, {
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
      else
        vim.lsp.config(server, {
          capabilities = capabilities,
          on_attach = on_attach,
        })
      end
    end
  end,
}
