return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      input = { enabled = true },
      notifier = { enabled = true },
      dashboard = {
        enabled = true,
        sections = {
          { section = "header" },
          {
            pane = 2,
            height = 5,
            padding = 5,
          },
          { section = "keys", gap = 1, padding = 1 },
          { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          {
            pane = 2,
            icon = " ",
            title = "Git Status",
            section = "terminal",
            enabled = function()
              return Snacks.git.get_root() ~= nil
            end,
            cmd = "git status --short --branch --renames",
            height = 5,
            padding = 1,
            ttl = 5 * 60,
            indent = 3,
          },
          { section = "startup" },
        },
      },
    },
    keys = {
      -- Top Pickers & Explorer
      -- Other
      { "<leader>n",  function() Snacks.notifier.show_history() end, desc = "Notification History" },
      { "<leader>cR", function() Snacks.rename.rename_file() end,    desc = "Rename File" },
      { "<leader>gg", function() Snacks.lazygit() end,               desc = "Lazygit" },
      { "<leader>un", function() Snacks.notifier.hide() end,         desc = "Dismiss All Notifications" },
      { "<c-_>",      function() Snacks.terminal() end,              desc = "which_key_ignore" },
    },
    init = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        callback = function()
          -- Create some toggle mappings
          Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
          Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
        end,
      })
    end,
  }
}
