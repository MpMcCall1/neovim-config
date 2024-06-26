local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = {
    "wbthomason/packer.nvim",
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  'windwp/nvim-ts-autotag',
  'rebelot/kanagawa.nvim',
  'vim-airline/vim-airline',
  'junegunn/fzf',
  {
      'VonHeikemen/lsp-zero.nvim',
      dependencies = {
          'neovim/nvim-lspconfig',
          'williamboman/mason.nvim',
          'williamboman/mason-lspconfig.nvim',
          'hrsh7th/nvim-cmp',
          'hrsh7th/cmp-buffer',
          'hrsh7th/cmp-path',
          'hrsh7th/cmp-nvim-lsp',
          'hrsh7th/cmp-nvim-lua',
          'saadparwaiz1/cmp_luasnip',
          {'L3MON4D3/LuaSnip', version = "v2.*", build = 'make install_jsregexp'},
          'rafamadriz/friendly-snippets',
      }
  },
  'mxw/vim-jsx',
  'pangloss/vim-javascript',
  'ap/vim-css-color',
  {
      'nvim-telescope/telescope.nvim',
      dependencies = {
          'nvim-lua/plenary.nvim' ,
          'nvim-telescope/telescope-fzf-native.nvim',
          'BurntSushi/ripgrep',
      }
  },
  'ThePrimeagen/harpoon',
  'tpope/vim-fugitive',
  'github/copilot.vim',
  }



require('lazy').setup(plugins)
