if has('nvim')
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'morhetz/gruvbox'

if has('nvim')
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
  Plug 'windwp/nvim-autopairs'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'jose-elias-alvarez/null-ls.nvim'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
endif

call plug#end()
