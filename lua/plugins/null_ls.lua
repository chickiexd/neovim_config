return {
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      local null_ls = require 'null-ls'
      local sources = {
        null_ls.builtins.formatting.black.with {
          filetypes = { 'python' },
          },
        null_ls.builtins.formatting.prettier.with {
          filetypes = { 'html', 'json', 'yaml', 'markdown' },
          command = '/mnt/c/Users/chickie/AppData/Roaming/npm/prettier',
          },
      }
      null_ls.setup { sources = sources }
    end,
  },
}
