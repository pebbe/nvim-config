local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      '~$',
    },
    mappings = {
      i = {
        ['<Left>'] = actions.cycle_history_prev,
        ['<Right>'] = actions.cycle_history_next,
        ['<C-Up>'] = actions.preview_scrolling_up,
        ['<C-Down>'] = actions.preview_scrolling_down,
      },
    },
  },
})
