-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins, you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  -- 'shortcuts/no-neck-pain.nvim',
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'github/copilot.vim', -- GitHub Copilot do :help copilot, 1st time run :Copilot setup
  {'folke/zen-mode.nvim', opts = {} },
  {'numToStr/Comment.nvim', opts = {} },



  require("chickie.plugins.telescope"),
  require("chickie.plugins.treesitter"),
  require("chickie.plugins.which-key"),
  require("chickie.plugins.todo-comments"),
  require("chickie.plugins.mini"),
  require("chickie.plugins.cmp"),
  require("chickie.plugins.lspconfig"),
  require("chickie.plugins.indent_line"),
  require("chickie.plugins.null_ls"),
  require("chickie.plugins.undotree"),
  require("chickie.plugins.trouble"),
  -- require("chickie.plugins.fugitive"),
  require("chickie.plugins.no-neck-pain"),
  -- require("chickie.plugins.leetcode"),
  require("chickie.plugins.euler_vim"),
  require("chickie.plugins.harpoon"),
  require("chickie.plugins.neogit"),
  -- require("chickie.plugins.nvim-tree"),
  -- require("chickie.plugins.vim-airline"),
  require("chickie.plugins.lualine"),
  -- COLOR SCHEMES
  require("chickie.plugins.colorscheme_catppuccin"),

  -- {'sainnhe/sonokai',
  --   priority = 1000,
  --   init = function()
  --     vim.cmd.colorscheme 'sonokai'
  --   end
  -- },


  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --
  --  This is equivalent to:
  --    require('Comment').setup({})

  -- The following two comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- put them in the right spots if you want.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for kickstart
  --
  --  Here are some example plugins that I've included in the kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  -- { import = 'chickie.plugins' },
}, {
  ui = {
    -- If you have a Nerd Font, set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
