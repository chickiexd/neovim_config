return
{
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python", --optional
    { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  lazy = false,
  branch = "regexp", -- This is the regexp branch, use this for the new version
  opts = {
    settings = {
      search = {
        my_venvs = {
          command = "fdfind python$ ~/.my_venvs",
        },
      },
    },
  },
  keys = {
    { "vs", "<cmd>VenvSelect<cr>" },
  },
}
