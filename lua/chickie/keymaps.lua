--  [[ Basic Keymaps ]]
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>Q", "<cmd>qa!<CR>")
vim.keymap.set("n", "<leader>w", "<cmd>wa!<CR>")
vim.keymap.set("n", "<leader>W", "<cmd>wqa<CR>")
vim.keymap.set("i", "jj", "<Esc><cmd>w<CR>")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

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
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

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
vim.keymap.set({ "n", "v" }, "y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>y", "y")
vim.keymap.set("n", "Y", [["+Y]])
vim.keymap.set("n", "<leader>Y", "Y")
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Nope
vim.keymap.set("n", "Q", "<nop>")

-- format focument
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Replace word under cursor across entire buffer
vim.keymap.set("n", "<leader>rd", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--COMMENT
vim.keymap.set("n", "<leader>c", "<cmd>lua require('Comment.api').toggle.linewise()<CR>", { desc = "Comment line" })

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- second brain stuff
vim.keymap.set("n", "<leader>sb", ":cd /home/chickie/data/second_brain<cr>")
vim.keymap.set("n", "<leader>sbf", ":Telescope find_files search_dirs={\"/home/chickie/data/second_brain\"}<cr>")
vim.keymap.set("n", "<leader>sbg", ":Telescope live_grep search_dirs={\"/home/chickie/data/second_brain\"}<cr>")

-- [[ Plugin Keymaps ]]
--
-- OIL
vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- NEOGIT
vim.keymap.set("n", "<leader>gs", ":Neogit<CR>", { desc = "Open Neogit" })
vim.keymap.set("n", "<leader>gc", ":Neogit commit<CR>", { desc = "commit Neogit" })
vim.keymap.set("n", "<leader>gp", ":Neogit pull<CR>", { desc = "pull Neogit" })
vim.keymap.set("n", "<leader>gP", ":Neogit push<CR>", { desc = "push Neogit" })
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", { desc = "telescope git branches" })

-- NVIM TREE
vim.keymap.set("n", "<leader>pv", "<CMD>NvimTreeToggle<CR>", { desc = "NVIM tree toggle" })

--TROUBLE
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>x.", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

-- Debugging
vim.keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = "Toggle breakpoint" })
vim.keymap.set("n", '<leader>bq', "<cmd>lua require'dap'.clear_breakpoints()<cr>", { desc = "Clear breakpoints" })
vim.keymap.set("n", '<leader>ba', '<cmd>Telescope dap list_breakpoints<cr>', { desc = "List breakpoints" })
vim.keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", { desc = "Continue" })
vim.keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>", { desc = "Step over" })
vim.keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>", { desc = "Step into" })
vim.keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>", { desc = "Step out" })
vim.keymap.set("n", '<leader>dd', function() require('dap').disconnect(); require('dapui').close(); end, { desc = "Disconnect" })
vim.keymap.set("n", '<leader>dt', function() require('dap').terminate(); require('dapui').close(); end, { desc = "Terminate" })
vim.keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", { desc = "Toggle REPL" })
vim.keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", { desc = "Run last" })
vim.keymap.set("n", '<leader>di', function() require "dap.ui.widgets".hover() end, { desc = "Hover" })
vim.keymap.set("n", '<leader>d?', function() local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes) end, { desc = "Scopes" })
vim.keymap.set("n", '<leader>df', '<cmd>Telescope dap frames<cr>', { desc = "Frames" })
vim.keymap.set("n", '<leader>dh', '<cmd>Telescope dap commands<cr>', { desc = "Commands" })
vim.keymap.set("n", '<leader>de', function() require('telescope.builtin').diagnostics({default_text=":E:"}) end, { desc = "Diagnostics" })

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
