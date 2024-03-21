return
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    -- branch = "macos",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      lang = "python",
      debug = true,
      -- cn = { -- leetcode.cn
      --
      --   enabled = true, ---@type boolean
      --   translator = true, ---@type boolean
      --   translate_problems = true, ---@type boolean
      -- },
      storage = {
        home = vim.fn.stdpath("data") .. "/leetcode",
        cache = vim.fn.stdpath("cache") .. "/leetcode",
        -- configuration goes here
      },
      keys = {
        toggle = { "q" }, ---@type string|string[]
        confirm = { "<CR>" }, ---@type string|string[]
        reset_testcases = "r", ---@type string
        use_testcase = "U", ---@type string
        focus_testcases = "H", ---@type string
        focus_result = "L", ---@type string
      },
    },
  }
