return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<M-e>", "<cmd>NvimTreeToggle<cr>", desc = "File Tree Toggle", mode = "n" },
		{ "<,t>", "<cmd>NvimTreeToggle<cr>", desc = "File Tree Toggle", mode = "n" },
	},
	opts = {},
}
