return
{
    'shortcuts/no-neck-pain.nvim',
    opts = {
        width = 130,
        autocmds = {
            enableOnVimEnter = true,
            -- configuration goes here
        },
        mappings = {
            --NONECKPAIN
            vim.keymap.set("n", "<leader>nn", ":NoNeckPain<CR>", { desc = "noneckpain" })
        },
        buffers = {
            wo = {
                fillchars = "eob: ",
            },
            right = {
                enabled = false,
            },
            colors = {
                -- background = "#2b2d2e",
                -- blend = -1,
            },
        },
    },
}
