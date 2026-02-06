return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{
				"<A-e>",
				function()
					if vim.bo.filetype == "neo-tree" then
						vim.cmd.Neotree("close")
					else
						vim.cmd.Neotree("reveal")
					end
				end,
				desc = "Toggle/Reveal Neo-tree",
			},
		},
		opts = {
			close_if_last_window = true,
			filesystem = {
				window = {
					mappings = {
						["l"] = "open",
						["oc"] = "none",
						["od"] = "none",
						["og"] = "none",
						["om"] = "none",
						["on"] = "none",
						["os"] = "none",
						["ot"] = "none",
						["o"] = {
							command = function(state)
								local node = state.tree:get_node()
								if node.type == "file" then
									-- 如果是文件，先调用内置的 open 命令打开
									state.commands.open(state)
									-- 然后立即将焦点切回 Neo-tree
									vim.cmd("Neotree focus")
								else
									-- 如果是目录，则执行默认的切换展开/折叠操作
									state.commands.open(state)
								end
							end,
							desc = "Open file and stay in neo-tree",
							nowait = true,
						},
					},
				},
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
		},
	},
	{
		"antosha417/nvim-lsp-file-operations",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-neo-tree/neo-tree.nvim", -- makes sure that this loads after Neo-tree.
		},
		config = function()
			require("lsp-file-operations").setup()
		end,
	},
	{
		"s1n7ax/nvim-window-picker",
		version = "2.*",
		config = function()
			require("window-picker").setup({
				filter_rules = {
					include_current_win = false,
					autoselect_one = true,
					-- filter using buffer options
					bo = {
						-- if the file type is one of following, the window will be ignored
						filetype = { "neo-tree", "neo-tree-popup", "notify" },
						-- if the buffer type is one of following, the window will be ignored
						buftype = { "terminal", "quickfix" },
					},
				},
			})
		end,
	},
}
