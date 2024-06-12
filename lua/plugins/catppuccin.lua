return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    init = function()
      priority = 1000,
      vim.cmd.colorscheme 'catppuccin'
    end,
    config = function()
      require("catppuccin").setup {
        flavour = "mocha",
        term_colors = true,
        transparent_background = false,
        dim_inactive = {
          enabled = true,
          shade = "dark",
          percentage = 0.9,
        },
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        styles = {
          comments = {},
          conditionals = {},
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
        },
        color_overrides = {
          latte = {
            base = "#000000",
            crust = "#000000",
            mantle = "#000000",
          },
          mocha = {
            base = "#141414",
            crust = "#000000",
            -- mantle = "#ffffff",
          },
        },
        integrations = {
          telescope = {
          },
          dropbar = {
          },
        },
      }
    end,
  },
}
