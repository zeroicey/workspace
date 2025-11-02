return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	opts = {
		close_if_last_window = true,
		filesystem = {
			window = {
				position = "right",
				mappings = {},
			},
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = false,
			},
		},
		default_component_configs = {
			indent = {
				indent_size = 2,
				padding = 2,
				with_markers = false,
				highlight = "NeoTreeIndentMarker",
				with_expanders = true,
				expander_collapsed = "",
				expander_expanded = "",
				expander_highlight = "NeoTreeExpander",
			},
			icon = {
				folder_closed = "",
				folder_open = "",
				folder_empty = "",
				default = "",
				highlight = "NeoTreeFileIcon",
			},
			modified = {
				symbol = "●",
				highlight = "NeoTreeModified",
			},
			name = {
				highlight = "NeoTreeFileName",
			},
		},
	},
}
