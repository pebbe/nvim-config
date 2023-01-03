local telescope = require 'telescope'

telescope.setup {
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
      "~$",
    },
  },
}

vim.api.nvim_set_keymap(
  'n',
  '<C-p>',
  ":lua require'telescope'.extensions.project.project{display_type='full'}<CR>",
  { noremap = true, silent = true, desc = "Telescope Projects" }
)
