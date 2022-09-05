return {
	-- built-ins
	["goolord/alpha-nvim"] = { disable = true },
	["p00f/nvim-ts-rainbow"] = { disable = true },
	["famiu/bufdelete.nvim"] = { disable = true },
	["nvim-neo-tree/neo-tree.nvim"] = { disable = true },
	-- mine
	["kylechui/nvim-surround"] = {
		config = require("user.plugins.nvim-surround"),
	},

	["andymass/vim-matchup"] = {
		after = "nvim-treesitter",
	},

	["arjunmahishi/run-code.nvim"] = {
		config = require("user.plugins.run-code"),
	},

	["hrsh7th/cmp-nvim-lsp-signature-help"] = {
		config = require("user.plugins.cmp-nvim-lsp-signature-help"),
	},

	["iamcco/markdown-preview.nvim"] = {
		ft = "markdown",
		run = require("user.plugins.markdown-preview"),
	},

	["nvim-telescope/telescope-file-browser.nvim"] = {
		after = "telescope.nvim",
		config = require("user.plugins.telescope-file-browser"),
	},

	["ethanholz/nvim-lastplace"] = {
		event = "BufRead",
		config = require("user.plugins.nvim-lastplace"),
	},

	["kevinhwang91/nvim-ufo"] = {
		requires = "kevinhwang91/promise-async",
		config = require("user.plugins.nvim-ufo"),
	},
	-- not quite ready for these yet but maybe one day?
	-- ["kevinhwang91/nvim-bqf"] = { ft = "qf", config = require "user.plugins.nvim-bqf" },
	--
	-- lost interest in these
	-- ["catppuccin/nvim"] = { as = "catppuccin", config = require "user.plugins.catppuccin" },
}
