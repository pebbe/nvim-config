return {
  'mfussenegger/nvim-lint',
  lazy = true,
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local lint = require('lint')
    lint.linters_by_ft = {
      -- https://github.com/mfussenegger/nvim-lint#available-linters
      go = { 'golangcilint' },
      javascript = { 'eslint_d' },
      typescript = { 'eslint_d' },
      svelte = { 'eslint_d' },
      python = { 'pylint' },
    }
    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
      -- pattern = { '*.go', '*.js', '*.ts' },
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })
    vim.keymap.set('n', '<leader>L', function()
      lint.try_lint()
    end, { desc = 'Lint' })
  end,
}
