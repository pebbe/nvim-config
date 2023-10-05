local servers = {
  'bashls',        -- bash
  'clangd',        -- C, C++
  'gopls',         -- Go
  'html',          -- HTML
  'jsonls',        -- JSON
  'lemminx',       -- XML
  'lua_ls',        -- Lua
  'pyright',       -- Python
  'rust_analyzer', -- Rust
  'svelte',        -- Svelte
  'tsserver',      -- JavaScript, TypeScript
  'vls',           -- V
  'zls',           -- Zig
}

return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require('mason')

    -- import mason-lspconfig
    local mason_lspconfig = require('mason-lspconfig')

    local mason_tool_installer = require('mason-tool-installer')

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = servers,
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })

    mason_tool_installer.setup({
      ensure_installed = {
        'prettier', -- prettier formatter
        'stylua',   -- lua formatter
        'isort',    -- python formatter
        'black',    -- python formatter
        'pylint',   -- python linter
        'eslint_d', -- js linter
      },
    })
  end,
}
