return {
  -- built-ins
  ["stevearc/aerial.nvim"] = { disable = true }, -- this screws up keybindings like '{' and '}' and maybe folding too
  ["goolord/alpha-nvim"] = { disable = true },
  ["p00f/nvim-ts-rainbow"] = { disable = true },
  ["famiu/bufdelete.nvim"] = { disable = true },
  ["nvim-neo-tree/neo-tree.nvim"] = { disable = true },
  -- mine
  ["andymass/vim-matchup"] = { after = "nvim-treesitter" },
  ["arjunmahishi/run-code.nvim"] = { config = require "user.plugins.run-code" },
  ["kevinhwang91/nvim-bqf"] = { ft = "qf", config = require "user.plugins.nvim-bqf" },
  ["catppuccin/nvim"] = { as = "catppuccin", config = require "user.plugins.catppuccin" },
  ["iamcco/markdown-preview.nvim"] = { ft = "markdown", run = require "user.plugins.markdown-preview" },
  ["nvim-telescope/telescope-file-browser.nvim"] = { after = "telescope.nvim", config = require "user.plugins.telescope-file-browser" },
  ["ethanholz/nvim-lastplace"] = { event = "BufRead", config = require "user.plugins.nvim-lastplace" },
  ["ur4ltz/surround.nvim"] = { config = require "user.plugins.surround" },
}
