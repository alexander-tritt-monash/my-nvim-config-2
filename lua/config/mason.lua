require("mason").setup{ }

require("mason-null-ls").setup({
	ensure_installed = {
		  -- code spell
		  "codespell",
		  -- "misspell",
		  "cspell",
	},
})

require("mason-lspconfig").setup {
	ensure_installed = {
		"lua_ls",
		"pylsp",
		"ltex",
	},
}
