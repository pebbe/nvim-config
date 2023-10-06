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
        css = { 'prettier' },
        go = { 'gofumpt' },
        html = { 'prettier' },
        javascript = { 'prettier' },
        json = { 'prettier' },
        less = { 'prettier' },
        lua = { 'stylua' },
        scss = { 'prettier' },
        svelte = { 'prettier' },
        typescript = { 'prettier' },
        yaml = { 'prettier' },
      },
      format_on_save = options,
    })
    vim.keymap.set({ 'n', 'v' }, '<leader>F', function()
      conform.format(options)
    end, { desc = 'Format file or range (V)' })
  end,
}
