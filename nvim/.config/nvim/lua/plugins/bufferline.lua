return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	keys = {
		{ "9", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
		{ "0", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },

		{ "(", "<cmd>BufferLineMovePrev<cr>", desc = "Move Buffer Left" },
		{ ")", "<cmd>BufferLineMoveNext<cr>", desc = "Move Buffer Right" },

		{ "<a-q>", "<cmd>bdelete<cr>", desc = "Delete Buffer" },
	},
	opts = {},
}
