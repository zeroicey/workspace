local keymap = vim.keymap.set

-- Leaderkey Set
keymap("n", "<Space>", "")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<leader>h", "<C-w>h")
keymap("n", "<leader>j", "<C-w>j")
keymap("n", "<leader>k", "<C-w>k")
keymap("n", "<leader>l", "<C-w>l")

-- window management
keymap("n", "<leader>\\", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap("n", "<leader>-", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally

--
keymap("n", "<leader>o", ":only<CR>")

-- Save && Quit
keymap("n", ",q", ":q<CR>", { desc = "Quit current file" })
keymap("n", ",w", ":w<CR>", { desc = "Save Current file" })

-- Faster move
keymap("n", "H", "^")
keymap("n", "L", "$")
keymap("n", "J", "5j")
keymap("n", "K", "5k")

-- Visual
-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Faster move
keymap("v", "H", "^")
keymap("v", "L", "g_")
keymap("v", "J", "5j")
keymap("v", "K", "5k")

-- Operate buffer
keymap("n", "<C-l>", ":bn<CR>")
keymap("n", "<C-h>", ":bp<CR>")
keymap("n", "<C-k>", ":bd<CR>")

-- Window resize
keymap("n", "=", [[<cmd>vertical resize +5<cr>]])
keymap("n", "-", [[<cmd>vertical resize -5<cr>]])
keymap("n", "+", [[<cmd>horizontal resize +2<cr>]])
keymap("n", "_", [[<cmd>horizontal resize -2<cr>]])
