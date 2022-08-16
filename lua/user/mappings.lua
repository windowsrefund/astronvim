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
    ["-"] = { "<c-x>", desc = "Descrement number" },
    ["+"] = { "<c-a>", desc = "Increment number" },
    ["<leader>b"] = { ":Telescope file_browser<CR>", desc = "File Browser" },
    ["<leader>v"] = { ":Telescope file_browser path=~/.config/astronvim/lua/user<CR>", desc = "Edit configuration" },
    ["<leader>r"] = { "<cmd>RunCodeFile<cr>", desc="Run code from file" },
  },
  i = {
    ["jj"] = { "<C-o>o", desc = "Skip to a newline in insert mode" },
    ["jl"] = { "<C-o>$", desc = "Jump to end of line while in insert mode" },
  },
  v = {
    ["<leader>r"] = { "<cmd>RunCodeSelected<cr>", desc="Run selected code" },
  },
}
