require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "<C-d>", "<ESC>yyp")
map("n", "<C-d>", "yyp")
map("v", "<C-d>", "yyp")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
