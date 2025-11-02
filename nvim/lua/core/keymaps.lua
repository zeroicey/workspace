local keymap = vim.keymap.set

-- -----------------------------------------------------------------------------
-- Basic Setup
-- -----------------------------------------------------------------------------

-- Set <Space> as the leader key
-- First, unmap <Space> to prevent it from triggering its default action (like 'l')
keymap("n", "<Space>", "", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("i", "jj", "<Esc>")
keymap("t", "jj", [[<C-\><C-n>]])

-- -----------------------------------------------------------------------------
-- Window Management
-- -----------------------------------------------------------------------------

-- Use <leader> + h/j/k/l for quick window navigation
keymap("n", "<leader>h", "<C-w>h", { desc = "Go to Left Window" })
keymap("n", "<leader>j", "<C-w>j", { desc = "Go to Down Window" })
keymap("n", "<leader>k", "<C-w>k", { desc = "Go to Up Window" })
keymap("n", "<leader>l", "<C-w>l", { desc = "Go to Right Window" })

-- Window Splitting
keymap("n", "<leader>\\", "<C-w>v", { desc = "Split Window Vertically" })
keymap("n", "<leader>-", "<C-w>s", { desc = "Split Window Horizontally" })

-- Close all windows except the current one
keymap("n", "<leader>o", ":only<CR>", { desc = "Keep Only Current Window" })

-- Window resizing
keymap("n", "=", "<cmd>vertical resize +5<cr>", { desc = "Increase Window Width" })
keymap("n", "-", "<cmd>vertical resize -5<cr>", { desc = "Decrease Window Width" })
keymap("n", "+", "<cmd>horizontal resize +2<cr>", { desc = "Increase Window Height" })
keymap("n", "_", "<cmd>horizontal resize -2<cr>", { desc = "Decrease Window Height" })

-- -----------------------------------------------------------------------------
-- File & Buffer Management
-- -----------------------------------------------------------------------------

-- Save & Quit
keymap("n", ",q", ":q<CR>", { desc = "Quit" })
keymap("n", ",w", ":w<CR>", { desc = "Write (Save)" })
keymap("n", "<leader>r", ":update<CR> :source<CR>")

-- -----------------------------------------------------------------------------
-- Motion & Editing
-- -----------------------------------------------------------------------------

-- Normal Mode
-- Faster line navigation
keymap("n", "H", "^", { desc = "Go to First Character of Line" })
keymap("n", "L", "$", { desc = "Go to End of Line" })
keymap("n", "J", "5j", { desc = "Move Down 5 Lines" })
keymap("n", "K", "5k", { desc = "Move Up 5 Lines" })

-- Visual Mode
-- Stay in indent mode after indenting
keymap("v", "<", "<gv", { desc = "Indent Left" })
keymap("v", ">", ">gv", { desc = "Indent Right" })

-- Faster line navigation in Visual Mode
keymap("v", "H", "^", { desc = "Extend Selection to First Character" })
keymap("v", "L", "g_", { desc = "Extend Selection to End of Line" })
keymap("v", "J", "5j", { desc = "Extend Selection Down 5 Lines" })
keymap("v", "K", "5k", { desc = "Extend Selection Up 5 Lines" })

-- -----------------------------------------------------------------------------
-- Plugin Keymaps
-- -----------------------------------------------------------------------------

-- File Explorer (requires neotree.nvim plugin)
keymap("n", "<A-o>", ":Neotree buffers position=float<CR>", { desc = "Toggle NeoTree Buffers" })
keymap("n", "<A-e>", function()
	if vim.bo.filetype == "neo-tree" then
		vim.cmd("Neotree close")
	else
		vim.cmd("Neotree filesystem reveal focus")
	end
end, { desc = "Focus or Toggle NeoTree filesystem" })

-- Formatting (requires conform.nvim or another formatter plugin)
keymap("n", ",f", function()
	require("conform").format()
end, { desc = "Format File" })

-- Telescope
keymap("n", "<leader>o", ":Telescope buffers<CR>", { desc = "Telescope find buffers" })
keymap("n", "<A-p>", ":Telescope find_files<CR>", { desc = "Telescope find files" })
keymap("n", "<leader> ", ":Telescope live_grep<CR>", { desc = "Telescope find words" })

keymap("n", ";", ":", { desc = "Open the command" })
keymap("n", "gb", "<C-t>", { desc = "Go bact to previous definition" })
