return function()
	-- set autocommands
	vim.api.nvim_create_augroup("packer_conf", { clear = true })
	vim.api.nvim_create_autocmd("BufWritePost", {
		desc = "Sync packer after modifying plugins.lua",
		group = "packer_conf",
		pattern = "plugins.lua",
		command = "source <afile> | PackerSync",
	})

	-- set custom filetypes
	vim.filetype.add({
		extension = {
			tf = "terraform",
			tfvars = "terraform-vars",
		},
	})
end
