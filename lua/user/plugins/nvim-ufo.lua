return function()
	local ftMap = {
		vim = "indent",
		python = { "indent" },
		git = "",
	}

	local function customizeSelector(bufnr)
		local function handleFallbackException(err, providerName)
			if type(err) == "string" and err:match("UfoFallbackException") then
				return require("ufo").getFolds(providerName, bufnr)
			else
				return require("promise").reject(err)
			end
		end

		return require("ufo")
			.getFolds("lsp", bufnr)
			:catch(function(err)
				return handleFallbackException(err, "treesitter")
			end)
			:catch(function(err)
				return handleFallbackException(err, "indent")
			end)
	end

	require("ufo").setup({
		provider_selector = function(bufnr, filetype, buftype)
			return ftMap[filetype] or customizeSelector
		end,
	})
end
