return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPre', 'BufNewFile' },
    build = ':TSUpdate',
    dependencies = {
      -- 'nvim-treesitter/nvim-treesitter-textobjects',
      'windwp/nvim-ts-autotag',
      'nvim-treesitter/nvim-treesitter-context',
    },
    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require('nvim-treesitter.configs')
      local tscontext = require('treesitter-context')

      -- TODO: hoort dit hier, of in een apart bestand?
      tscontext.setup({
        enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
        multiwindow = false, -- Enable multiwindow support.
        max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
        min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
        line_numbers = true,
        multiline_threshold = 20, -- Maximum number of lines to show for a single context
        trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
        mode = 'cursor', -- Line used to calculate context. Choices: 'cursor', 'topline'
        -- Separator between context and content. Should be a single character string, like '-'.
        -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
        separator = '^',
        zindex = 20, -- The Z-index of the context window
        on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
      })

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
          'turtle',
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
