return {
  'nvim-neorg/neorg',
  version = 'v7.0.0',
  build = ':Neorg sync-parsers',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('neorg').setup({
      load = {
        ['core.defaults'] = {}, -- Loads default behaviour
        ['core.concealer'] = {}, -- Adds pretty icons to your documents
        ['core.dirman'] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = '~/neorg',
            },
            default_workspace = 'notes',
          },
        },
      },
    })
    vim.keymap.set('n', '<leader>Oo', '<cmd>Neorg index<CR>', { noremap = true, silent = true, desc = 'Neorg open' })
    vim.keymap.set('n', '<leader>Oc', '<cmd>Neorg return<CR>', { noremap = true, silent = true, desc = 'Neorg close' })
  end,
}
