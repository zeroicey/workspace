vim.api.nvim_create_autocmd("FileType", {
	pattern = { "*.html", "*.lua" },
	callback = function()
		vim.opt.shiftwidth = 2
		vim.opt.tabstop = 2
		vim.opt.shiftwidth = 2
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "*.py", "*.rs", "*.md", "*.cpp", "*.c", "*.js", "*.ts", "*.jsx", "*.tsx" },
	callback = function()
		vim.opt.shiftwidth = 4
		vim.opt.tabstop = 4
		vim.opt.shiftwidth = 4
	end,
})
