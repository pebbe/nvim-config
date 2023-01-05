if vim.g.vscode then
else
  require("peter.plugins-setup")
  require("peter.core.options")
  require("peter.core.keymaps")
  require("peter.core.colorscheme")
  require("peter.plugins.lsp")
  require("peter.plugins.cmp")
  require("peter.plugins.lualine")
  -- require("peter.plugins.cokeline")
  require("peter.plugins.treesitter")
  require('peter.plugins.telescope')
  require('peter.plugins.comment')
  require('peter.plugins.gitsigns')
  require('peter.plugins.whichkey')
end
