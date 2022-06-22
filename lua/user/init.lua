local config = {

  plugins = {
    init = {

      -- Add plugins, the packer syntax without the "use"
      {
        "nyngwang/NeoRoot.lua",
        config = function()
          require('neo-root').setup {
            CUR_MODE = 1 -- 1 for file/buffer mode, 2 for proj-mode
          }
        end,
      },
      {
        "iamcco/markdown-preview.nvim",
        run = function()
          vim.fn["mkdp#util#install"]()
        end,
      },
      {
        "arjunmahishi/run-code.nvim",
      },

      -- Themes
      {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
          vim.g.catppuccin_flavour = "macchiato"
          vim.cmd[[colorscheme catppuccin]]
        end,
      },

      -- Disable these plugins
      ["p00f/nvim-ts-rainbow"] = { disable = true },
    },
  },

  cmp = {
    sources = {
      { name = "buffer", keyword_length = 5 },
    }
  },

  ["which-key"] = {
    register_mappings = {
      n = { -- normal mode
        ["<leader>"] = { -- leader prefix
          ["r"] = { "<cmd>RunCodeFile<cr>", "Run code from file"},
        },
      },
      v = { -- visual mode
        ["<leader>"] = { -- leader prefix
          ["r"] = { "<cmd>RunCodeSelected<cr>", "Run selected code"},
        },
      }
    },
  },
}

return config
