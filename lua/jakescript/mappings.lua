local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- NvimTree mappings
keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>", opts)
