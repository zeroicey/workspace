return {
	"nvim-mini/mini.nvim",
	version = "*",
	lazy = false,
	keys = {
		-- 1. Alt + p: 查找文件
		{
			"<A-p>",
			function()
				require("mini.pick").builtin.files()
			end,
			desc = "Find Files (Mini Pick)",
		},
		-- 2. <leader>tab: 切换 Buffer
		{
			"<leader><tab>",
			function()
				require("mini.pick").builtin.buffers()
			end,
			desc = "Find Buffers",
		},
		-- 3. <leader>space: 实时 Grep (搜索内容)
		{
			"<leader><space>",
			function()
				require("mini.pick").builtin.grep_live()
			end,
			desc = "Live Grep",
		},
	},
	config = function()
		require("mini.cursorword").setup()
		require("mini.pick").setup({
			mappings = {
				move_down = "<Tab>",
				move_up = "<S-Tab>",
				toggle_preview = "<A-\\>",
				toggle_info = "",
			},
			window = {
				config = {
					border = "double",
				},
			},
		})
		require("mini.notify").setup()
		require("mini.starter").setup({
			header = [[
░▒▓████████▓▒░▒▓█▓▒░░▒▓██████▓▒░░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░      ░▒▓██████▓▒░  ░▒▓██████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░         ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     
░▒▓████████▓▒░▒▓█▓▒░░▒▓██████▓▒░░▒▓████████▓▒░  ░▒▓█▓▒░     
      ]],
		})
	end,
}
