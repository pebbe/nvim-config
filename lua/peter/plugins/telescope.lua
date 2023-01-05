local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup({
	--[[
  extensions = {
    project = {
      base_dirs = {
        '~/.nvim/config/nvim' -- ???
      },
    },
  },
  --]]
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

vim.api.nvim_set_keymap(
	'n',
	'<C-p>',
	":lua require'telescope'.extensions.project.project{display_type='full'}<CR>",
	{ noremap = true, silent = true, desc = 'Telescope Projects' }
)
