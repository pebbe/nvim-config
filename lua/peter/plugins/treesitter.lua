return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPre', 'BufNewFile' },
    build = ':TSUpdate',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
      'windwp/nvim-ts-autotag',
    },
    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require('nvim-treesitter.configs')

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
          disable = { '' }, -- list of languages that will be disabled
        },
        -- enable indentation
        indent = {
          enable = true,
          disable = { '' }, -- list of languages that will be disabled
        },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = {
          enable = true,
        },
        -- ensure these language parsers are installed
        ensure_installed = {
          'c',
          'go',
          'html',
          'javascript',
          'json',
          'latex',
          'lua',
          'make',
          'markdown',
          'norg',
          'python',
          'r',
          'rust',
          'sparql',
          'sql',
          'svelte',
          'toml',
          'typescript',
          'v',
          'vim',
          'yaml',
          'zig',
        },
        -- auto install above language parsers
        auto_install = true,
        playground = {
          enable = true,
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<C-space>',
            node_incremental = '<C-space>',
            scope_incremental = false,
            node_decremental = '<bs>',
          },
        },
        -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
      })
      vim.opt.foldmethod = 'expr'
      vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
    end,
  },
}
