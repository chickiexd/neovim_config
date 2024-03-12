return {
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      local null_ls = require 'null-ls'
      local sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.prettier.with {
          filetypes = { 'html', 'json', 'yaml', 'markdown', 'python' },
          command = '/usr/bin/prettier',
          },
      }
      null_ls.setup { sources = sources }
    end,
  },
}
