table.insert(vim.opt.path, "../node_modules/.bin")

-- General
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4

-- Python
vim.opt.colorcolumn = "80"

-- Package manager
require("config.lazy")

-- Colour scheme
require("config.rose-pine")

-- Code parser
require("config.treesitter")

-- Status line
require("config.lualine")

-- Language servers
require("config.mason")
require("config.lspconfig")

-- Completion
require("config.nvim-cmp")

-- Fuzzy finder
require("config.telescope")
