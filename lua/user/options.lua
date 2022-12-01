return {
	opt = {
		conceallevel = 2, -- enable conceal
		foldcolumn = "3",
		foldnestmax = 3,
		foldlevel = 99,
		foldlevelstart = 99,
		foldenable = false,
		foldexpr = "nvim_treesitter#foldexpr()",
		foldmethod = "expr",
		linebreak = true, -- linebreak soft wrap at words
		list = true, -- show whitespace characters
		listchars = { tab = "→ ", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣", eol = "↲" },
		shortmess = vim.opt.shortmess + { I = true },
		showbreak = "↪ ",
		-- spellfile = "~/.config/astronvim/lua/user/spell/en.utf-8.add",
		-- thesaurus = "~/.config/astronvim/lua/user/spell/thesaurus.txt",
		wrap = true, -- soft wrap lines
	},
}
