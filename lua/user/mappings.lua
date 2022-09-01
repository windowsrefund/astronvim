return {
	n = {
		-- disable default bindings
		["<C-Down>"] = false,
		["<C-Left>"] = false,
		["<C-Right>"] = false,
		["<C-Up>"] = false,
		["<C-q>"] = false,
		["<C-s>"] = false,
		["<"] = false,
		[">"] = false,
		["<leader>h"] = false,
		["<C-\\>"] = false,
		["<leader>fh"] = false,
		["<leader>fm"] = false,
		["<leader>fn"] = false,
		["<leader>fo"] = false,
		["<leader>sb"] = false,
		["<leader>sc"] = false,
		["<leader>sh"] = false,
		["<leader>sk"] = false,
		["<leader>sm"] = false,
		["<leader>sn"] = false,
		["<leader>sr"] = false,
		-- navigating wrapped lines
		j = { "gj", desc = "Navigate down" },
		k = { "gk", desc = "Navigate down" },
		-- easy splits
		["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
		["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
		-- better increment/decrement
		["<leader>-"] = { "<c-x>", desc = "Descrement number" },
		["<leader>+"] = { "<c-a>", desc = "Increment number" },
		-- window movement
		["<leader>m"] = { "<c-w>", desc = "Window movement", silent = true },
		-- code runner
		["<leader>r"] = { "<cmd>RunCodeFile<cr>", desc = "Run code from file" },
		-- edit astronvim configs
		["<leader>a"] = {
			":Telescope file_browser path=~/.config/astronvim/lua/user grouped=true<CR>",
			desc = "Edit configuration",
			silent = true,
		},
		-- fie browser
		["-"] = { "<cmd>Telescope file_browser grouped=true<CR>", desc = "File Browser", silent = true },
	},
	i = {
		["jj"] = { "<C-o>o", desc = "Skip to a newline in insert mode" },
		["jl"] = { "<C-o>$", desc = "Jump to end of line while in insert mode" },
	},
	v = {
		["<leader>r"] = { "<cmd>RunCodeSelected<cr>", desc = "Run selected code" },
	},
}
