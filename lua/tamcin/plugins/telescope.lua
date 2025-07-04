return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
    config = function()
      local telescope = require("telescope")
      local map = vim.keymap.set
      local builtin = require("telescope.builtin")

      -- Setting UI Select for Telescope
      -- Useful for Selecting LSP in Mason and Code Action
      telescope.setup({
        extenstions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })

      telescope.load_extension("ui-select")

      -- Keymapping to Fuzzy Finder, Grep and Buffers with Telescope
      map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
      map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
      map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
      map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
    end,
  },
}
