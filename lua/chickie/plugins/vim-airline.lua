return
  {
    'vim-airline/vim-airline',
    config = function()
      -- vim.g.airline_powerline_fonts = 1
      vim.g.airline_theme = 'catppuccin'
      vim.g.airline_section_x = ''
      vim.g.airline_section_y = ''
      vim.g.airline_section_z = '%3l:%-2c  %p%%'
      -- vim.g.enable_airline_tabline = 0
    end,
  }
