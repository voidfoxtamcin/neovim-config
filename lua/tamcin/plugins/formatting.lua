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
          svelte = "svelte",
          css = "css",
          scss = "scss",
          less = "less",
          html = "html",
          json = "json",
          jsonc = "json",
          yaml = "yaml",
          astro = "astro",
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
        go = { "gofumpt", "goimports", "goimports-reviser" },
        latex = { "tex-fmt" },
        twig = { "djlint" },
        templ = {
          "templ",
          "injected",
        },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
      },
    })
  end,
}
