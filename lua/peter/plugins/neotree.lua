-- er is een alternatief voor deze plugin: https://github.com/nvim-tree/nvim-tree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup({
      filesystem = {
        filtered_items = {
          never_show = {
            '.dc',
          },
          hide_by_pattern = {
            '*~',
          },
        },
        bind_to_cwd = true, -- true creates a 2-way binding between vim's cwd and neo-tree's root
        cwd_target = {
          sidebar = "window",   -- sidebar is when position = left or right
          -- current = "window",   -- current is when position = current
        },
      },
    })
    vim.keymap.set(
      'n',
      '<F2>',
      '<cmd>Neotree toggle reveal_force_cwd<CR>',
      { noremap = true, silent = true, desc = 'Neotree' }
    )
  end,
}
