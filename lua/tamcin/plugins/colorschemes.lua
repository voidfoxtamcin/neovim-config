return {
    {
        "navarasu/onedark.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("onedark").setup({
                style = "deep",
            })
            -- Enable theme
            require("onedark").load()
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        enabled = false,
        opts = {
            flavor = "macchiato",
            transparent_background = vim.g.transparent_enabled,
        },
        config = function()
            vim.cmd.colorscheme("catppuccin")
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        enabled = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd.colorscheme("tokyonight-storm")
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        enabled = false,
        config = function()
            vim.o.background = "dark"
            vim.cmd.colorscheme("gruvbox")
        end,
        opts = {},
    },
}
