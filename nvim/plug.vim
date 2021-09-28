if has('nvim')
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'morhetz/gruvbox'
  Plug 'cohama/lexima.vim'
call plug#end()
