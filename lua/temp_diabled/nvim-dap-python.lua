return {
    -- https://github.com/mfussenegger/nvim-dap-python
    'mfussenegger/nvim-dap-python',
    ft = 'python',
    dependencies = {
        -- https://github.com/mfussenegger/nvim-dap
        'mfussenegger/nvim-dap',
        'hererocks/hererocks',
    },
    opts = {
        rocks = {
            enable = false,
        },
    },
    config = function()
        -- Update the path passed to setup to point to your system or virtual env python binary
        require('dap-python').setup(require("venv-selector").python())
    end
}
