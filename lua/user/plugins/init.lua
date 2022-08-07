return {
  ["p00f/nvim-ts-rainbow"] = { disable = true },
  ["stevearc/aerial.nvim"] = { disable = true }, -- this screws up keybindings like '{' and '}' and maybe folding too
  ["famiu/bufdelete.nvim"] = { disable = true },

  [ "iamcco/markdown-preview.nvim" ] = {
    run = function()
      vim.fn["mkdp#util#install"](0)
    end,
    ft = {
      "markdown",
    },
  },

  [ "arjunmahishi/run-code.nvim" ] = {
    config = function()
      require('run-code').setup {
        output = {
          buffer = false,
          split_cmd = '20split',
        },
      }
    end,
  },

  -- Better quickfix window
  ["kevinhwang91/nvim-bqf"] = {
    ft = "qf",
    config = function()
      require("bqf").setup()
    end,
  },

  [ "catppuccin/nvim" ] = {
    as = "catppuccin",
      config = function()
        vim.g.catppuccin_flavour = "macchiato"
        vim.cmd[[colorscheme catppuccin]]
      end,
  },

  [ "ray-x/lsp_signature.nvim" ] = {
    config = function()
      require('lsp_signature').setup()
    end,
  },
}
