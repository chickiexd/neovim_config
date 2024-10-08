-- chickie options
--
-- [[ Basic options ]]
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = true

vim.opt.shell = 'zsh'

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.g.have_nerd_font = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false

-- Save undo history
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Enable break indent
vim.opt.breakindent = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- conceal level for obsidian
vim.opt.conceallevel = 2

-- turn of auto read for mounted filesystems
vim.opt.autoread = false

-- add '-' to keywords
vim.opt.iskeyword:append('-')




