local map = vim.keymap.set
local default = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.localmapleader = "//"

-- Increment/Decrement
map("n", "+", "<C-a>", { desc = "Increment numbers", noremap = true })
map("n", "-", "<C-x>", { desc = "Decrement numbers", noremap = true })

-- Split Windows
map("n", "<leader>ss", "<cmd>split<cr>", { desc = "Split window horizontally", noremap = true })
map("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Split window vertically", noremap = true })

-- Lazy Stuff
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Open Lazy", noremap = true })
map("n", "<leader>li", "<cmd>Lazy install<cr>", { desc = "Open Lazy Install", noremap = true })
map("n", "<leader>lu", "<cmd>Lazy update<cr>", { desc = "Open Lazy Update", noremap = true })

-- Mason LSP
map("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Open Mason", noremap = true })

-- Change active windows
map("n", "<leader>wh", "<C-w>h", default)
map("n", "<leader>wj", "<C-w>j", default)
map("n", "<leader>wk", "<C-w>k", default)
map("n", "<leader>wl", "<C-w>l", default)

-- Oil
map("n", "\\", "<cmd>Oil --float<cr>", default)

-- LSP Stuff
default.desc = "Code Actions"
map("n", "<leader>ca", vim.lsp.buf.code_action, default)

-- Quick escape from terminal
map("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Quit terminal mode" })
