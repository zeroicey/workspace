return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({})
		require("nvim-treesitter").install({
			"c",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
			"javascript",
			"typescript",
			"html",
			"css",
			"python",
			"rust",
			"bash",
			"go",
			"sql",
		})
	end,
}
