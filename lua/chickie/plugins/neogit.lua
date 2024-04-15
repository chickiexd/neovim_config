return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration
      -- "nvim-telescope/telescope.nvim", -- optional
    },
    config = function()
      require("neogit").setup {
        disable_signs = false,
        disable_context_highlighting = false,
        disable_commit_confirmation = false,
        disable_builtin_notifications = false,
        commit_popup = {
          kind = "split",
        },
        integrations = {
          diffview = true,
        },
        kind = "vsplit",
      }
    end,
  },
}
