---@diagnostic disable: unused-local, undefined-global
return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup({})
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "emmet_language_server",
          "ts_ls",
          "html",
          "svelte",
          "intelephense",
          "astro",
          "cssls",
          "tailwindcss",
          "eslint",
          "pylsp",
          "biome",
          "ruff",
          "gopls",
          "texlab",
          "templ",
        },
        automatic_enable = true,
      })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      local mason_tool = require("mason-tool-installer")

      mason_tool.setup({
        ensure_installed = {
          "prettier",
          "prettierd",
          "stylua",
          "pylint",
          "eslint_d",
          "isort",
          "autopep8",
          "djlint",
          "biome",
          "gofumpt",
          "goimports",
          "goimports-reviser",
          "tex-fmt",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
      local lsp = require("lspconfig")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      local map = vim.keymap.set
      local opts = { noremap = true, silent = true }
      local on_attach = function(client, bufnr)
        opts.buffer = bufnr

        opts.desc = "Show LSP references"
        map("n", "<leader>gr", "<cmd>Telescope lsp_references<cr>", opts)
        opts.desc = "Go to definition"
        map("n", "<leader>gd", "<cmd>Telescope lsp_definitions<cr>", opts)
        opts.desc = "Hover action"
        map("n", "K", vim.lsp.buf.hover, opts)
        opts.desc = "Signature Help"
        map("n", "<C-k>", vim.lsp.buf.signature_help, opts)
      end

      local capabilities = cmp_nvim_lsp.default_capabilities()

      lsp.lua_ls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.stdpath("config") .. "/lua"] = true,
              },
            },
          },
        },
      })
      lsp.ts_ls.setup({ capabilities = capabilities, on_attach = on_attach })
      lsp.html.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = {
          "html",
          "templ",
        },
      })
      lsp.intelephense.setup({ capabilities = capabilities, on_attach = on_attach })
      lsp.emmet_language_server.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "html", "css", "javascript", "typescript", "astro", "templ" },
      })
      lsp.astro.setup({ capabilities = capabilities, on_attach = on_attach })
      lsp.texlab.setup({ capabilities = capabilities, on_attach = on_attach })
      lsp.biome.setup({ capabilities = capabilities, on_attach = on_attach })
      lsp.templ.setup({ capabilities = capabilities, on_attach = on_attach })
      lsp.cssls.setup({ capabilities = capabilities, on_attach = on_attach })
      lsp.tailwindcss.setup({ capabilities = capabilities, on_attach = on_attach })
      lsp.eslint.setup({ capabilities = capabilities, on_attach = on_attach })
      lsp.pylsp.setup({ capabilities = capabilities, on_attach = on_attach })
      lsp.ruff.setup({ capabilities = capabilities, on_attach = on_attach })
      lsp.gopls.setup({ capabilities = capabilities, on_attach = on_attach })
      lsp.svelte.setup({ capabilities = capabilities, on_attach = on_attach })
    end,
  },
}
