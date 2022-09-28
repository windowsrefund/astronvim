return function()
	-- set autocommands
	vim.api.nvim_create_augroup("packer_conf", { clear = true })
	vim.api.nvim_create_autocmd("BufWritePost", {
		desc = "Sync packer after modifying plugins.lua",
		group = "packer_conf",
		pattern = "plugins.lua",
		command = "source <afile> | PackerSync",
	})

	-- do not show the dap-repl buffer (without this it displays as a tab)
	vim.api.nvim_create_autocmd("filetype", {
		pattern = "dap-repl",
		callback = function(args)
			vim.api.nvim_buf_set_option(args.buf, "buflisted", false)
		end,
	})

	-- set custom filetypes
	vim.filetype.add({
		extension = {
			tf = "terraform",
			tfvars = "terraform-vars",
		},
	})
end
