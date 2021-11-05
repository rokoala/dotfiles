if has('nvim')
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'morhetz/gruvbox'

if has('nvim')
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
endif

call plug#end()
