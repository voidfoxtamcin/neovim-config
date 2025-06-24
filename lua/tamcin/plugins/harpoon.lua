return {
    "ThePrimeagen/harpoon",
    dependecies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local notify = require("notify")
        require("harpoon").setup({
            menu = {
                width = vim.api.nvim_win_get_width(0) - 4,
            },
        })
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>aa", function()
            mark.add_file()
            notify("Buffer has been added to Harpoon", "success", {
                title = "Harpoon",
            })
        end, { desc = "Register buffer to Harpoon" })
        vim.keymap.set("n", "<leader>as", ui.toggle_quick_menu, { desc = "Open Harpoon menu" })
    end,
}
