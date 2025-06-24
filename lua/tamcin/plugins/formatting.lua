return {
    "stevearc/conform.nvim",
    enabled = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.formatters.prettier = {
            options = {
                ft_parsers = {
                    javascript = "babel",
                    javascriptreact = "babel",
                    typescript = "typescript",
                    typescriptreact = "typescript",
                    vue = "vue",
                    css = "css",
                    scss = "scss",
                    less = "less",
                    html = "html",
                    json = "json",
                    jsonc = "json",
                    yaml = "yaml",
                    astro = "astro",
                    twig = "twig",
                },
            },
        }

        conform.setup({
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                htmldjango = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                svelte = { "prettier" },
                lua = { "stylua" },
                python = { "autopep8", "black" },
                twig = { "djlint" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>fp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            }, { desc = "Format file" })
        end)
    end,
}
