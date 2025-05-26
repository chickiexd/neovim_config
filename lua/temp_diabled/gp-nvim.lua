return {
    "robitx/gp.nvim",
    config = function()
        local conf = {
            openai_api_key = { "cat", "/home/chickie/chatgpt_api" },
            -- For customization, refer to Install > Configuration in the Documentation/Readme
        }
        require("gp").setup(conf)
        local function keymapOptions(desc)
            return {
                noremap = true,
                silent = true,
                nowait = true,
                desc = "GPT prompt " .. desc,
            }
        end
        -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
        vim.keymap.set({ "n", "i" }, "<M-g>c", "<cmd>GpChatNew<cr>", keymapOptions("New Chat"))
        vim.keymap.set({ "n", "i" }, "<M-g><M-t>", "<cmd>GpChatToggle<cr>", keymapOptions("Toggle Chat"))
        vim.keymap.set({ "n", "i" }, "<M-g>f", "<cmd>GpChatFinder<cr>", keymapOptions("Chat Finder"))

        vim.keymap.set({ "n", "i" }, "<M-g><M-x>", "<cmd>GpChatNew split<cr>", keymapOptions("New Chat split"))
        vim.keymap.set({ "n", "i" }, "<M-g><M-v>", "<cmd>GpChatNew vsplit<cr>", keymapOptions("New Chat vsplit"))

        vim.keymap.set({ "n", "i", "v", "x" }, "<M-g>s", "<cmd>GpStop<cr>", keymapOptions("Stop"))
    end,
}
