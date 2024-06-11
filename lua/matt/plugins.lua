return {
    "wbthomason/packer.nvim",
  {'nvim-treesitter/nvim-treesitter', cmd = ':TSUpdate'},
  'windwp/nvim-ts-autotag',
  'rebelot/kanagawa.nvim',
  'vim-airline/vim-airline',
  'junegunn/fzf',
  {
      'VonHeikemen/lsp-zero.nvim',
      dependencies = {
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
  },
  'mxw/vim-jsx',
  'pangloss/vim-javascript',
  'ap/vim-css-color',
  {
      'nvim-telescope/telescope.nvim',
      dependencies = {
          { 'nvim-lua/plenary.nvim' },
          { 'nvim-telescope/telescope-fzf-native.nvim' },
          { 'BurntSushi/ripgrep' },
      }
  },
  'ThePrimeagen/harpoon',
  'tpope/vim-fugitive',
  'github/copilot.vim',
  {
      'AckslD/nvim-whichkey-setup.lua',
      dependencies= { 'liuchengxu/vim-which-key' },
  },
  }


