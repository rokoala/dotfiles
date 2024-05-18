local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

vim.cmd([[
  augroup typescriptcheck
    autocmd FileType typescript,typescriptreact compiler tsc | setlocal makeprg=npx\ tsc
  augroup END
]])

vim.g.vimwiki_list = {
	{
		path = "~/vimwiki",
		syntax = "markdown",
		ext = ".md",
		auto_generate_tags = 1,
		auto_generated_links = 1,
		template_path = "~/vimwiki/templates/",
		template_default = "default",
		path_html = "~/vimwiki/site_html/",
		custom_wiki2html = "vimwiki_markdown",
		html_file_parameterization = 1,
		template_ext = ".tpl",
		auto_toc = 1,
		auto_export = 1,
	},
	{
		path = "~/vimwiki-work",
		syntax = "markdown",
		ext = ".md",
		auto_generate_tags = 1,
		auto_generated_links = 1,
		template_path = "~/vimwiki-work/templates/",
		template_default = "default",
		path_html = "~/vimwiki-work/site_html/",
		custom_wiki2html = "vimwiki_markdown",
		html_file_parameterization = 1,
		template_ext = ".tpl",
		auto_toc = 1,
		auto_export = 1,
	},
}

-- configure maps
require("maps")

require("lazy").setup("plugins")

local set = vim.opt
set.clipboard = "unnamed"
set.fileencodings = "utf-8"
set.encoding = "utf-8"
set.title = true
set.autoindent = true
set.background = "dark"
set.backup = false
set.hlsearch = true
set.showcmd = true
set.cmdheight = 1
set.laststatus = 2
set.scrolloff = 10
set.expandtab = true
set.shell = "fish"
set.backupskip = "/tmp/*,/private/tmp/*"
set.inccommand = "split"
--set.t_BE=true
set.sc = false
set.ru = false
set.sm = false
set.nu = true
set.rnu = true
set.lazyredraw = true
set.ignorecase = true
set.smarttab = true
set.shiftwidth = 2
set.tabstop = 2
set.softtabstop = 2
set.smartindent = true
set.wrap = false
set.backspace = "indent,eol,start"
--set.path+=**
--set.wildignore+=*/node_modules/*
set.cursorline = true
set.background = "dark"
set.compatible = false
