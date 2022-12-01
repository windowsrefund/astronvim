local null_ls = require("null-ls")
return {
	sources = {
		null_ls.builtins.code_actions.gitsigns,
		null_ls.builtins.code_actions.shellcheck,
		-- Supported formatters
		-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.terraform_fmt,
		null_ls.builtins.formatting.shfmt,
		-- python formatters
		null_ls.builtins.formatting.isort,
		null_ls.builtins.formatting.black.with({
			extra_args = { "--line-length=79" },
		}),
		-- Supported linters
		-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
		null_ls.builtins.diagnostics.shellcheck,
		null_ls.builtins.diagnostics.flake8.with({
			-- ignore "line too long"
			extra_args = { "--ignore=E501" },
		}),
	},
}
