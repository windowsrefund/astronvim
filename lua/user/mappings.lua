return {
  n = {
    ["<leader>ff"] = { "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", desc = "Find files" },
    ["<leader>v"] = { ":e ~/.config/astronvim/lua/user<CR>", desc = "Edit configuration" },
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
