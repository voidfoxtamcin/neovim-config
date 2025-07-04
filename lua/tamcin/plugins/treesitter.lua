return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "html",
        "css",
        "php",
        "svelte",
        "astro",
        "go",
        "templ",
        "toml",
        "yaml",
      },
      auto_install = true,
      highlight = { enable = true },
      disable = { "latex" },
    })
  end,
}
