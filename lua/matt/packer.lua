vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use ({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use 'ellisonleao/gruvbox.nvim'
  use 'vim-airline/vim-airline'
  use 'junegunn/fzf'
  use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},
          
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
  }
  use 'mxw/vim-jsx'
  use 'pangloss/vim-javascript'
  use 'ap/vim-css-color'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use 'ThePrimeagen/harpoon'
  use {
      'iamcco/markdown-preview.nvim',
      run = function() vim.fn["mkdp#util#install"]() end
  }
end)

