-- Copied from https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation
-- Latex requires tree-sitter-cli to be intalled and available via nodejs npm

require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"cpp",
		"glsl",
		"lua",
		"vim",
		"vimdoc",
		"html",
		"python",
		"gitcommit",
		"gitignore",
		"git_config",
		"git_rebase",
		"ini",
		"json",
		"latex",
		"bibtex",
		"powershell",
		"yaml",
		"markdown"
	},
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
})
