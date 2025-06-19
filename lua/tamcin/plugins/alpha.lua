return {
    "goolord/alpha-nvim",
    dependencies = {
        "echasnovski/mini.icons",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local alpha = require("alpha")
        local theme = require("alpha.themes.dashboard")

        theme.section.header.val = {
            [[████████╗ █████╗ ███╗   ███╗ ██████╗██╗███╗   ██╗]],
            [[╚══██╔══╝██╔══██╗████╗ ████║██╔════╝██║████╗  ██║]],
            [[   ██║   ███████║██╔████╔██║██║     ██║██╔██╗ ██║]],
            [[   ██║   ██╔══██║██║╚██╔╝██║██║     ██║██║╚██╗██║]],
            [[   ██║   ██║  ██║██║ ╚═╝ ██║╚██████╗██║██║ ╚████║]],
            [[   ╚═╝   ╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝╚═╝╚═╝  ╚═══╝]],
        }
        theme.section.buttons.val = {
            theme.button("e", " | New File", "<CMD>ene <BAR> startinsert <CR>"),
            theme.button("b", "󱦞 | Explore Files", "<CMD>Oil --float <CR>"),
            theme.button("m", " | Open Mason", "<CMD>Mason <CR>"),
            theme.button("l", "󰒲 | Open Lazy", "<CMD>Lazy <CR>"),
            theme.button("ff", "󰱼 | Find File (Telescope)", "<CMD>Telescope find_files <CR>"),
            theme.button("q", " | Quit ", "<CMD>qall <CR>"),
        }
        alpha.setup(theme.config)
    end,
}
