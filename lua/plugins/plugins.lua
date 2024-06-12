return
{
    'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
    'github/copilot.vim', -- GitHub Copilot do :help copilot, 1st time run :Copilot setup
    { 'folke/zen-mode.nvim',   opts = {} },
    { 'numToStr/Comment.nvim', opts = {} },
    {
        'RRethy/vim-illuminate',
        opts = {},
        config = function()
            vim.g.Illuminate_delay = 1000
            vim.g.Illuminate_ftblacklist = { 'NvimTree', 'Trouble', 'dashboard', 'packer', 'startify', 'fugitive',
                'fugitiveblame', 'undotree', }
        end
    },
}
