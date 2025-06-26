return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		keymaps = {
			["<BS>"] = { "actions.parent", mode = "n" },
		},

		view_options = {
			show_hidden = false,
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	lazy = false,
}
