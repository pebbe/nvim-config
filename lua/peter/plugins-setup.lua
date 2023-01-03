-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, 'packer')
if not status then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use('wbthomason/packer.nvim')

  --------
  -- begin plugins

  use('nvim-lua/plenary.nvim') -- helper voor veel andere plugins


  -- themes
  -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use "lunarvim/darkplus.nvim"
  use "lunarvim/onedarker.nvim"
  use "folke/tokyonight.nvim"
  use "rafi/awesome-vim-colorschemes"
  use "bluz71/vim-nightfly-guicolors"

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
  }
  use('nvim-telescope/telescope-project.nvim')

  -- treesitter
  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  })

  -- neo-tree
  -- Unless you are still migrating, remove the deprecated commands from v1.x
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      -- 'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    }
  }

  -- statusline
  use('nvim-lualine/lualine.nvim')

  -- cokeline
  use {
    'noib3/nvim-cokeline',
    requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
  }


  -- LSP
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }

  -- Code completion
  use {
    'hrsh7th/nvim-cmp',
    requires = { 'L3MON4D3/LuaSnip' },
  }
  use('hrsh7th/cmp-nvim-lsp')
  -- use('hrsh7th/cmp-buffer')
  -- use('hrsh7th/cmp-path')
  -- use "hrsh7th/cmp-cmdline" -- cmdline completions
  -- use("saadparwaiz1/cmp_luasnip")

  -- snippets
  -- use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  use("folke/which-key.nvim")

  use("tpope/vim-dispatch")


  -- end plugins
  --------

  if packer_bootstrap then
    require('packer').sync()
  end
end)
