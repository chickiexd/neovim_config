return {
  {
    'nvimtools/none-ls.nvim',
    config = function()
      local null_ls = require 'null-ls'
      local sources = {
        null_ls.builtins.formatting.black.with {
          filetypes = { 'python' },
        },
        null_ls.builtins.formatting.prettier.with {
          filetypes = { 'html', 'json', 'yaml', 'markdown','typescriptreact', 'typescript', 'javascript' },
          command = '/usr/local/bin/prettier',
        },
      }
      null_ls.setup {
        sources = sources,
        debug = true,
      }
    end,
  },
}
