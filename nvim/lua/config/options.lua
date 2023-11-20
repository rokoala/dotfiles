-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " "

-- vimwiki
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

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = "fish"
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })

vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]])

if vim.fn.has("nvim-0.8") == 1 then
  vim.opt.cmdheight = 0
end
