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

-- Fuzzy finder
require("config.telescope")
