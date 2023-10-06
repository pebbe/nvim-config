if vim.g.vscode then
  return
end

require('peter.core')
require('peter.lazy')

local cd = require('peter.local.cd')
vim.keymap.set('n', '<F4>', cd.cd, { noremap = true, silent = true, desc = 'Sessies' })
