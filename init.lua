if vim.g.vscode then
  return
end

require('peter.plugins-setup')
require('peter.core.options')
require('peter.core.keymaps')
require('peter.core.colorscheme')
require('peter.core.cd')
require('peter.plugins.lsp')
require('peter.plugins.cmp')
require('peter.plugins.lualine')
require('peter.plugins.cokeline')
require('peter.plugins.treesitter')
require('peter.plugins.telescope')
require('peter.plugins.comment')
require('peter.plugins.gitsigns')
require('peter.plugins.null-ls')
require('peter.plugins.whichkey')
-- require('peter.plugins.indent_blankline')
require('peter.plugins.chafa')
