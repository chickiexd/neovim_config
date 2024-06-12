return
{
  'mbbill/undotree', -- Undo tree
  config = function()
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
  end
}
