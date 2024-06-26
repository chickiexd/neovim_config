return {
  {
    'nvim-lualine/lualine.nvim',
    reuires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
      local lualine = require('lualine')
      lualine.setup {
        options = {
          icons_enabled = true,
          path = 0,
          mode = 2,
          theme = 'auto',
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = { 'tabs' },
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = {
            { 'filename', show_filename_only = true, path = 4 }
          },
          lualine_x = { 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
        },
        winbar = {},
        inactive_winbar = {},
        extensions = {}
      }
      -- lualine.hide({
      --   place = {'statusline', 'winbar'}, -- The segment this change applies to.
      --   unhide = false,  -- whether to re-enable lualine again/
      -- })
    end,
  },
}
