vim.api.nvim_create_autocmd("FileType", {
	pattern = { "html", "lua" },
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python", "rust", "markdown", "cpp", "c", "javascript", "typescript", "jsx", "tsx" },
	callback = function()
		vim.opt_local.shiftwidth = 4
		vim.opt_local.tabstop = 4
	end,
})
