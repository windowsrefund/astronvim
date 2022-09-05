return function()
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.textDocument.foldingRange = {
		dynamicRegistration = false,
		lineFoldingOnly = true,
	}
	local servers = { "yamlls" } -- like {'gopls', 'clangd'}
	for _, ls in ipairs(servers) do
		require("lspconfig")[ls].setup({
			capabilities = capabilities,
		})
	end
	require("ufo").setup()
end
