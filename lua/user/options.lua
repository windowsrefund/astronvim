  return {
    opt = {
      conceallevel = 2, -- enable conceal
      foldenable = false,
      foldmethod = "expr",
      foldexpr = "nvim_treesitter#foldexpr()",
      foldlevel = 99,
      linebreak = true, -- linebreak soft wrap at words
      list = true, -- show whitespace characters
      listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
      shortmess = vim.opt.shortmess + { I = true },
      showbreak = "↪ ",
      -- spellfile = "~/.config/astronvim/lua/user/spell/en.utf-8.add",
      -- thesaurus = "~/.config/astronvim/lua/user/spell/thesaurus.txt",
      wrap = true, -- soft wrap lines
    },
    g = {
      loaded_netrwFileHandlers = true, -- enable netrw
      loaded_netrwPlugin = true, -- enable netrw
      loaded_netrwSettings = true, -- enable netrw
    },
  }
