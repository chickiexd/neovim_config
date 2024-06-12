--  [[ Basic Keymaps ]]
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>Q", "<cmd>qa!<CR>")
vim.keymap.set("n", "<leader>w", "<cmd>wa<CR>")
vim.keymap.set("n", "<leader>W", "<cmd>wqa<CR>")
vim.keymap.set("i", "jj", "<Esc><cmd>w<CR>")

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv^")
vim.keymap.set("v", ">", ">gv^")

-- Resize
vim.keymap.set('n', '<M-Left>',  ':vertical resize -5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Right>', ':vertical resize +5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Up>',    ':resize +5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Down>',  ':resize -5<CR>', { noremap = true, silent = true })

-- TABS
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<leader>to", "<cmd>tabonly<CR>", { desc = "Close other tabs" })

-- Unmap default split navigation
-- vim.keymap.set('n', '<C-w>l', '', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-w>h', '', { noremap = true, silent = true })
-- Set tab navigation to CTRL+<hjkl>
vim.keymap.set('n', '<C-w>l', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>h', ':tabprevious<CR>', { noremap = true, silent = true })

-- file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep screen centered
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- copy and paste
vim.keymap.set("v", "p", [["_dP]])
vim.keymap.set("v", "<leader>p", "p")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Nope
vim.keymap.set("n", "Q", "<nop>")

-- format focument
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Replace word under cursor across entire buffer
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- second brain stuff
vim.keymap.set("n", "<leader>sb", ":cd /home/chickie/data/second_brain<cr>")
vim.keymap.set("n", "<leader>sbf", ":Telescope find_files search_dirs={\"/home/chickie/data/second_brain\"}<cr>")
vim.keymap.set("n", "<leader>sbg", ":Telescope live_grep search_dirs={\"/home/chickie/data/second_brain\"}<cr>")

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- [[ Plugin Keymaps ]]
--
-- OIL
vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })


-- [[ Autocmds ]]
-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
