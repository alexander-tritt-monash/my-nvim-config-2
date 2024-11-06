-- General
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

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
