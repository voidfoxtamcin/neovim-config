return {
    "rachartier/tiny-inline-diagnostic.nvim",
    -- event = "VeryLazy", -- Or `LspAttach`
    event = "LspAttach", -- Or `LspAttach`
    priority = 1000,     -- needs to be loaded in first
    config = function()
        require("tiny-inline-diagnostic").setup({
            options = {
                multilines = {
                    enabled = true,
                    always_show = true,
                },
            },
        })
        -- vim.diagnostic.config({ virtual_text = false }) -- Only if needed in your configuration, if you already have native LSP diagnostics
    end,
}
