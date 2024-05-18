return {
	{
		'morhetz/gruvbox',
		lazy = false,
		priority = 1000, 
		config = function()
			vim.cmd([[autocmd vimenter * ++nested colorscheme gruvbox]])
		end
	}
}
