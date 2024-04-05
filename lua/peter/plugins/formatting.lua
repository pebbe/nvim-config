return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local conform = require('conform')
    local options = {
      lsp_fallback = true,
      async = false,
      timeout_ms = 500,
    }
    conform.setup({
      formatters_by_ft = {
        -- https://github.com/stevearc/conform.nvim#formatters
        bash = { 'beautysh' },
        c = { 'clang-fomat' },
        cpp = { 'clang-format' },
        -- c = { 'uncrustify' },
        -- cpp = { 'uncrustify' },
        css = { 'prettier' },
        dart = { 'dart_format' },
        go = { 'gofumpt' },
        html = { 'prettier' }, -- de default werkt beter
        javascript = { 'prettier' },
        json = { 'prettier' },
        less = { 'prettier' },
        lua = { 'stylua' },
        scss = { 'prettier' },
        sh = { 'beautysh' },
        svelte = { 'prettier' },
        typescript = { 'prettier' },
        xml = { 'xmlformat' }, -- de default werkt beter
        yaml = { 'prettier' },
      },
      format_on_save = options,
    })
    vim.keymap.set({ 'n', 'v' }, '<leader>F', function()
      conform.format(options)
    end, { desc = 'Format file or range (V)' })
  end,
}
