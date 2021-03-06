local config = {

  -- AstroNvim updates
  updater = {
    remote = "origin",
    channel = "nightly",
    version = "latest",
    branch = "main",
    commit = nil,
    pin_plugins = nil,
    skip_prompts = false,
    show_changelog = true,
  },

  colorscheme = "catppuccin",

  options = {
    opt = {
      foldenable = false,
      foldmethod = "expr",
      foldlevel = 99,
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

      {
        "mfussenegger/nvim-dap",
      },

      {
        "mfussenegger/nvim-dap-python",
      },
      {
        "ray-x/lsp_signature.nvim",
      },

      -- Disable these plugins
      ["p00f/nvim-ts-rainbow"] = { disable = true },
      ["stevearc/aerial.nvim"] = { disable = true }, -- this screws up keybindings like '{' and '}' and maybe folding too
    },

    cmp = function(config)
      local kind_icons = {
        Text = " ",
        Method = " ",
        Function = " ",
        Constructor = "",
        Field = " ",
        Variable = " ",
        Class = " ",
        Interface = " ",
        Module = " ",
        Property = " ",
        Unit = " ",
        Value = " ",
        Enum = " ",
        Keyword = " ",
        Snippet = " ",
        Color = " ",
        File = " ",
        Reference = " ",
        Folder = " ",
        EnumMember = " ",
        Constant = " ",
        Struct = " ",
        Event = " ",
        Operator = " ",
        TypeParameter = " ",
      }

      local cmp = require "cmp"

      return vim.tbl_deep_extend("force", config, {
        experimental = {
          ghost_text = true,
        },
        view = {
          entries = { name = "custom", selection_order = "near_cursor" },
        },
        window = {
          documentation = {
            border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
          },
        },
        formatting = {
          fields = { "abbr", "kind", "menu" },
          format = function(entry, vim_item)
            -- Kind icons
            vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
            -- Source
            vim_item.menu = ({
              buffer = "Buf",
              nvim_lsp = "LSP",
              luasnip = "LuaSnip",
              nvim_lua = "Lua",
              latex_symbols = "LaTeX",
              cmp_tabnine = "Tabnine",
              path = "Path",
            })[entry.source.name]
            return vim_item
          end,
        },
        mapping = {
          ["<C-j>"] = cmp.config.disable,
          ["<C-k>"] = cmp.config.disable,
	        ["<C-p>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
	        ["<C-n>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
        },
      })
    end,

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
          handler = function(_)
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
        if client.resolved_capabilities.document_formatting then
          vim.api.nvim_create_autocmd("BufWritePre", {
            desc = "Auto format before save",
            pattern = "<buffer>",
            callback = vim.lsp.buf.formatting_sync,
          })
        end
      end
      return config
    end,

    treesitter = {
      ensure_installed = { 
        "lua",
        "hcl",
      },
    },

    ["nvim-lsp-installer"] = {
      ensure_installed = {
        "bashls", -- bash
        "sumneko_lua", -- lua
        "terraformls", -- terraform
      },
    },
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

  -- Extend LSP configuration
  lsp = {
    ["server-settings"] = {
      python = {
        analysis = {
          typeCheckingMode = "on",
        },
      },
    },
  },

  diagnostics = {
    virtual_text = false, -- prevent diagnostics from jumping onto page. Use gl to hover instead.
  },

  mappings = {
    i = {
      ["jj"] = { "<C-o>o", desc = "Skip to a newline in insert mode" },
      ["jl"] = { "<C-o>$", desc = "Jump to end of line while in insert mode" },
    }
  },

  -- This function is run last
  -- It provides a good place to setup autogroups/autocommands and custom filetypes.
  polish = function()

    -- Custom filetypes
    vim.filetype.add {
      extension = {
        tf = "terraform",
        tfvars = "terraform-vars",
      },
    }
  end,
}

return config
