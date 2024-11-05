require('telescope').setup{}

-- See https://github.com/nvim-telescope/telescope.nvim
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fr", builtin.git_files, {})
vim.keymap.set("n", "<leader>ft", builtin.treesitter, {})
-- Requires sudo pacman -S ripgrep or winget install BurntSushi.ripgrep.MSVC, 
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
-- vim.keymap.set("n", "<leader>fg", function()
-- 	builtin.grep_string({search = vim.fn.input("Grep > ")})
-- end)
