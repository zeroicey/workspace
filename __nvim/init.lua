vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.swapfile = false
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>r', ':update<CR> :source<CR>')
vim.keymap.set('n', ',w', ':write<CR>')
vim.keymap.set('n', ',q', ':quit<CR>')

vim.cmd(":hi statusline guibg=NONE")
