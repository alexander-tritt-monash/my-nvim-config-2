-- Copied from https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation
-- Latex requires tree-sitter-cli to be intalled and available via nodejs npm

-- require("nvim-treesitter.configs").setup({
-- 	ensure_installed = {
-- 		"c",
-- 		"cpp",
-- 		"glsl",
-- 		"lua",
-- 		"vim",
-- 		"vimdoc",
-- 		"html",
-- 		"python",
-- 		"gitcommit",
-- 		"gitignore",
-- 		"git_config",
-- 		"git_rebase",
-- 		"ini",
-- 		"json",
-- 		"latex",
-- 		"bibtex",
-- 		"powershell",
-- 		"yaml",
-- 		"markdown",
-- 		"julia"
-- 	},
-- 	sync_install = false,
-- 	highlight = { enable = true },
-- 	indent = { enable = true },
-- })

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = "main",
  build = ":TSUpdate",

  config = function()
    -- ensure parsers are installed
    require("nvim-treesitter").install({
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
	"markdown",
	"julia"
    })

    -- enable treesitter highlighting
    vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
	    local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)
	    if lang then
		pcall(vim.treesitter.start, args.buf, lang)
	    end
	end,
    })

    vim.api.nvim_create_autocmd("FileType", {
        pattern = "markdown",
        callback = function()
          require('vim.treesitter.query').set(
            'markdown', 
            'highlights', 
            [[ [ (fenced_code_block_delimiter) ] @punctuation.delimiter ]]
          )
        end,
      })

  end,
}
