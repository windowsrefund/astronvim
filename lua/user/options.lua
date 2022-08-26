return {
	opt = {
		conceallevel = 2, -- enable conceal
		foldcolumn = "2",
		foldnestmax = 2,
		foldenable = true,
		foldlevel = 99,
		foldlevelstart = 99,
		-- foldmethod = "expr",
		-- foldexpr = "nvim_treesitter#foldexpr()",
		linebreak = true, -- linebreak soft wrap at words
		list = true, -- show whitespace characters
		listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
		-- fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]],
		-- fillchars = "eob: ",
		shortmess = vim.opt.shortmess + { I = true },
		-- showbreak = "↪ ",
		showbreak = "╰─➤ ",
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
