return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 1000
  end,
  config = function()
    local wk = require('which-key')
    wk.setup({})
    --[[
    wk.register({
      a = { name = 'Status line' },
      b = { name = 'Buffers' },
      -- c = { name = 'Code' },
      d = { name = 'Diagnostics' },
      D = { name = 'Debug' },
      f = { name = 'Find', c = { name = 'Calls' } },
      g = { name = 'Git' },
      O = { name = 'Neorg' },
      t = { name = 'Tabs' },
      c = { name = 'Completion', c = { name = 'Local completion' }, g = { name = 'Global completion' } },
      x = { name = 'Spelling' },
    }, {
      prefix = '<leader>',
    })
    --]]
    wk.add({
      { '<leader>C', group = 'Context' },
      { '<leader>D', group = 'Debug' },
      { '<leader>O', group = 'Neorg' },
      { '<leader>a', group = 'Status line' },
      { '<leader>b', group = 'Buffers' },
      { '<leader>c', group = 'Completion' },
      { '<leader>cc', group = 'Local completion' },
      { '<leader>cg', group = 'Global completion' },
      { '<leader>d', desc = 'Diagnostics' },
      { '<leader>f', group = 'Find' },
      { '<leader>fc', group = 'Calls' },
      { '<leader>g', group = 'Git' },
      { '<leader>t', group = 'Tabs' },
      { '<leader>x', group = 'Spelling' },
    })
  end,
}
