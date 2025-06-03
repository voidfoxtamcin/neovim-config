return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        enabled = true,
        opts = {
            flavor = "macchiato",
            transparent_background = vim.g.transparent_enabled,
        },
        config = function()
            vim.cmd.colorscheme("catppuccin")
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        enabled = false,
        config = function()
            vim.cmd.colorscheme("kanagawa")
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
    {
        "xiyaowong/transparent.nvim",
        lazy = false,
        opts = {},
    },
}
