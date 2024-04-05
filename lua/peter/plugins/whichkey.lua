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
    wk.register({
      a = { name = 'Status line' },
      b = { name = 'Buffers' },
      -- c = { name = 'Code' },
      d = { mame = 'Diagnostics' },
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
  end,
}
