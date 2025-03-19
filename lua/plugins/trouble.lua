return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "nvim-treesitter/nvim-treesitter-textobjects" },
    keys = {
        { "<leader>xx", "TroubleToggle", desc = "Trouble" },
        { "<leader>xw", "TroubleToggle lsp_workspace_diagnostics", desc = "Trouble: LSP Workspace Diagnostics" },
        { "<leader>xd", "TroubleToggle lsp_document_diagnostics", desc = "Trouble: LSP Document Diagnostics" },
        { "<leader>x.", "TroubleToggle quickfix", desc = "Trouble: Quickfix" },
        { "<leader>xl", "TroubleToggle loclist", desc = "Trouble: Location List" },
        { "gR",         "TroubleToggle lsp_references", desc = "Trouble: LSP References" },
        { "]]", "Trouble next", desc = "Trouble: Next" },
        { "[[", "Trouble prev", desc = "Trouble: Previous" },
    },
    opts = {
        focus = true
    },

}
