return {
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require('oil').setup({
        columns = {
          "icon",
        },
        view_options = {
          show_hidden = true,
        },
      })
    end,
  },
}
