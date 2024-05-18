return {
  {
    'ThePrimeagen/harpoon',
    config = function()
      vim.api.nvim_set_keymap('n', '<C-e>', "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<CR>",
        { silent = true, noremap = true })
      vim.api.nvim_set_keymap('n', '<leader>a', "<cmd>:lua require('harpoon.mark').add_file()<CR>",
        { silent = true, noremap = true })
      vim.api.nvim_set_keymap('n', '<leader>j', "<cmd>:lua require('harpoon.ui').nav_file(1)<CR>",
        { silent = true, noremap = true })
      vim.api.nvim_set_keymap('n', '<leader>k', "<cmd>:lua require('harpoon.ui').nav_file(2)<CR>",
        { silent = true, noremap = true })
      vim.api.nvim_set_keymap('n', '<leader>l', "<cmd>:lua require('harpoon.ui').nav_file(3)<CR>",
        { silent = true, noremap = true })
      vim.api.nvim_set_keymap('n', '<leader>;', "<cmd>:lua require('harpoon.ui').nav_file(4)<CR>",
        { silent = true, noremap = true })
    end
  }
}
