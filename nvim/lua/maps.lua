-- functions map, nmap
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

-- Set leader key
vim.g.mapleader = " "
vim.g.NERDTreeShowHidden = 1

-- Increment and decrement
nmap("+","<C-a>")
nmap("-","<C-x>")

-- Change delete word way method
nmap("dw",'vb"_d')

-- Tabs
-- Open current directory
nmap("te",":tabedit<Return>")
nmap("<S-Tab>",":tabprev<Return>")
nmap("<Tab>",":tabnext<Return>")

-- Split the windows
nmap("ss",":split<Return><C-w>w")
nmap("sv",":vsplit<Return><C-w>w")

-- Move between windows
nmap("<Space>","<C-w>w")
nmap("sh","<C-w>h")
nmap("sj","<C-w>j")
nmap("sk","<C-w>k")
nmap("sl","<C-w>l")

-- Resize window size
nmap("<C-w><C-l>","<C-w><")
nmap("<C-w><C-h>","<C-w>>")
nmap("<C-w><C-k>","<C-w>+")
nmap("<C-w><C-j>","<C-w>--")

-- nerdtree commands
nmap("<leader>n",":NERDTreeFocus<CR>")
nmap("<C-b>",":NERDTreeToggle<CR>")
nmap("<leader>,",":NERDTreeFind<CR>")

-- noh
nmap("<C-L>",":noh<CR><C-L>")

-- telescope commands
nmap("<leader>ff","<cmd>lua require('telescope.builtin').find_files({ hidden = true, file_ignore_patterns = { 'node%_modules/.*', '.git/.*' }})<cr>")
nmap("<leader>fg","<cmd>lua require('telescope.builtin').live_grep()<cr>")
nmap("<leader>fb","<cmd>lua require('telescope.builtin').buffers()<cr>")
nmap("<leader>fh","<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- lspsaga commands
nmap("<C-j>","<cmd>Lspsaga diagnostic_jump_next<CR>")
nmap("K","<cmd>Lspsaga hover_doc<CR>")
nmap("<C-k>","<cmd>Lspsaga signature_help<CR>")
nmap("gh","<cmd>Lspsaga lsp_finder<CR>")
nmap("gd","<cmd>Lspsaga preview_definition<CR>")
nmap("<leader>ca","<cmd>Lspsaga code_action<CR>")
