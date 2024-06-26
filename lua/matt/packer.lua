vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use ({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use 'windwp/nvim-ts-autotag'
  use 'rebelot/kanagawa.nvim'
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
          {'hrsh7th/cmp-nvim-lua', commit = 'b356f2c', pin=true,},
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
  }
  use 'mxw/vim-jsx'
  use 'pangloss/vim-javascript'
  use 'ap/vim-css-color'
  use {
      'nvim-telescope/telescope.nvim',
      requires = {
          { 'nvim-lua/plenary.nvim' },
          { 'nvim-telescope/telescope-fzf-native.nvim' },
          { 'BurntSushi/ripgrep' },
      }
  }
  use 'ThePrimeagen/harpoon'
  use 'tpope/vim-fugitive'
  use {
      'iamcco/markdown-preview.nvim',
      run = function() vim.fn["mkdp#util#install"]() end
  }
  use 'github/copilot.vim'
  use {
      'AckslD/nvim-whichkey-setup.lua',
      requires = { 'liuchengxu/vim-which-key' },
  }

end)

