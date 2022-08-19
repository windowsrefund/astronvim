local null_ls = require "null-ls"
return {
  sources = {
    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.code_actions.shellcheck,
    -- Check supported formatters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    null_ls.builtins.formatting.autopep8,
    null_ls.builtins.formatting.terraform_fmt,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.shfmt,
    -- Check supported linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.diagnostics.shellcheck,
  },
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.api.nvim_create_autocmd("BufWritePre", {
        desc = "Auto format before save",
        pattern = "<buffer>",
        callback = function() vim.lsp.buf.formatting_sync() end,
      })
    end
  end,
}
