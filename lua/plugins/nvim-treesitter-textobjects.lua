return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  lazy = true,
  config = function()
    require("nvim-treesitter.configs").setup({
      textobjects = {
        select = {
          enable = true,

          -- Automatically jump forward to textobj, similar to targets.vim
          lookahead = true,

          keymaps = {
            ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
            ["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },
            --
            ["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
            ["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },
            --
            ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
            ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },
            --
            ["af"] = { query = "@function.outer", desc = "Select outer part of a method/function definition" },
            ["if"] = { query = "@function.inner", desc = "Select inner part of a method/function definition" },
            --
            ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
          },
        },
        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next_start = {
            ["<leader>jf"] = { query = "@function.outer", desc = "Next method/function def start" },
            ["<leader>jc"] = { query = "@class.outer", desc = "Next class start" },
            ["<leader>ji"] = { query = "@conditional.outer", desc = "Next conditional start" },
            ["<leader>jl"] = { query = "@loop.outer", desc = "Next loop start" },
          },
          goto_next_end = {
            ["<leader>jF"] = { query = "@function.outer", desc = "Next method/function def end" },
            ["<leader>jC"] = { query = "@class.outer", desc = "Next class end" },
            ["<leader>jI"] = { query = "@conditional.outer", desc = "Next conditional end" },
            ["<leader>jL"] = { query = "@loop.outer", desc = "Next loop end" },
          },
          goto_previous_start = {
            ["<leader>kf"] = { query = "@function.outer", desc = "Prev method/function def start" },
            ["<leader>kc"] = { query = "@class.outer", desc = "Prev class start" },
            ["<leader>ki"] = { query = "@conditional.outer", desc = "Prev conditional start" },
            ["<leader>kl"] = { query = "@loop.outer", desc = "Prev loop start" },
          },
          goto_previous_end = {
            ["<leader>kF"] = { query = "@function.outer", desc = "Prev method/function def end" },
            ["<leader>kC"] = { query = "@class.outer", desc = "Prev class end" },
            ["<leader>kI"] = { query = "@conditional.outer", desc = "Prev conditional end" },
            ["<leader>kL"] = { query = "@loop.outer", desc = "Prev loop end" },
          },
        },
      },
    })

    local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")

    -- vim way: ; goes to the direction you were moving.
    vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
    vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)

    -- Optionally, make builtin f, F, t, T also repeatable with ; and ,
    vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f)
    vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F)
    vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t)
    vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T)
  end,
}

