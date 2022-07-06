local config = {

  options = {
    opt = {
      foldmethod = "expr",
      foldexpr = "nvim_treesitter#foldexpr()",
    },
  },

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
      ["stevearc/aerial.nvim"] = { disable = true },
    },

    bufferline = {
      options = {
        show_close_icon = false,
        show_buffer_close_icons = false,
      },
    },

    better_escape = {
      mapping = { "jk"},
    },

    ["neo-tree"] = {
      window = {
        width = 40,
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            -- auto close
            require("neo-tree").close_all()
          end
        },
      },
    },

    ["null-ls"] = function(config)
      local null_ls = require "null-ls"
      config.sources = {
        null_ls.builtins.formatting.black,
      }
      config.on_attach = function(client)
        if client.server_capabilities.documentFormattingProvider then
          vim.api.nvim_create_autocmd("BufWritePre", {
            desc = "Auto format before save",
            pattern = "<buffer>",
            callback = function()
              vim.lsp.buf.format()
            end,
          })
        end
      end
      return config
    end,
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

  mappings = {
    i = {
      -- rather than using ESC and o, perhaps use C-o then o
      ["jj"] = { "<C-o>o", desc = "Skip to a newline in insert mode" },
      ["aa"] = { "<C-o>A", desc = "Jump to end of line and append in insert mode" },
    }
  },
}

return config
