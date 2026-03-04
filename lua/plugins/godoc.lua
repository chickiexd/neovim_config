return {
  {
    "fredrikaverpil/godoc.nvim",
    ft = { "go", "gomod" },
    event = { "BufReadPost *.go", "BufReadPost go.mod" },
    cmd = { "GoDocc" },
    version = "*",
    dependencies = {
      { "nvim-telescope/telescope.nvim", optional = true },
      { "ray-x/go.nvim"},
      { "folke/snacks.nvim", optional = true },
      { "echasnovski/mini.pick", optional = true },
      { "ibhagwan/fzf-lua", optional = true },
      {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          vim.list_extend(opts.ensure_installed, { "go" })
        end,
      },
    },
    build = "go install github.com/lotusirous/gostdsym/stdsym@latest",
    opts = {
      command = "GoDocc",
      get_syntax_info = function()
        return {
          filetype = "godoc",
          language = "go",
        }
      end,
    },
  },
}

