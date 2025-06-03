return {
    "nvimtools/none-ls.nvim",
    enabled = false,
    config = function()
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        local null = require("null-ls")
        null.setup({
            on_attach = function(client, buffer)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = buffer })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = buffer,
                        callback = function()
                            vim.lsp.buf.format({ async = false })
                        end,
                    })
                end
            end,
            sources = {
                null.builtins.formatting.prettier,
                null.builtins.formatting.prettierd,
                null.builtins.formatting.black,
                null.builtins.formatting.isort,
                null.builtins.formatting.stylua,
                null.builtins.formatting.pretty_php,
            },
        })
    end,
}
