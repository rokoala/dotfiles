return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  }, {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require('mason-lspconfig').setup({
      ensure_installed = {
        'bashls',
        'tsserver',
        'pylsp',
        'gopls',
        'tailwindcss',
        'lua_ls',
        'svelte'
      }
    })
  end
}
}
