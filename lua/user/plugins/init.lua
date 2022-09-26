return {
	-- built-ins
	["goolord/alpha-nvim"] = { disable = true },
	["p00f/nvim-ts-rainbow"] = { disable = true },
	["famiu/bufdelete.nvim"] = { disable = true },
	["nvim-neo-tree/neo-tree.nvim"] = { disable = true },

	-- mine
	["kylechui/nvim-surround"] = {
		config = function()
			require("nvim-surround").setup()
		end,
	},

	-- extend % to language-specific words rather than just characters
	["andymass/vim-matchup"] = {
		after = "nvim-treesitter",
	},

	["arjunmahishi/run-code.nvim"] = {
		config = function()
			require("run-code").setup({
				output = {
					buffer = false,
					split_cmd = "20split",
				},
			})
		end,
	},

	["iamcco/markdown-preview.nvim"] = {
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
		ft = {
			"markdown",
		},
	},

	["ethanholz/nvim-lastplace"] = {
		config = function()
			require("nvim-lastplace").setup({
				lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
				lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
				lastplace_open_folds = true,
			})
		end,
	},

	["kevinhwang91/nvim-ufo"] = {
		requires = "kevinhwang91/promise-async",
		config = function()
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.foldingRange = {
				dynamicRegistration = false,
				lineFoldingOnly = true,
			}
			local servers = { "yamlls" } -- like {'gopls', 'clangd'}
			for _, ls in ipairs(servers) do
				require("lspconfig")[ls].setup({
					capabilities = capabilities,
				})
			end
			require("ufo").setup()
		end,
	},

	["nvim-telescope/telescope-file-browser.nvim"] = {
		after = "telescope.nvim",
		config = function()
			require("telescope").load_extension("file_browser")
		end,
	},

	-- not quite ready for these yet but maybe one day?
	-- ["hrsh7th/cmp-nvim-lsp-signature-help"] = {
	-- 	config = require("user.plugins.cmp-nvim-lsp-signature-help"),
	-- },
	--
	-- 	-- ["kevinhwang91/nvim-bqf"] = { ft = "qf", config = require "user.plugins.nvim-bqf" },
	-- 	--
	-- 	-- lost interest in these
	-- 	-- ["catppuccin/nvim"] = { as = "catppuccin", config = require "user.plugins.catppuccin" },
}
