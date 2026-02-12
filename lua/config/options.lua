-- Disable netrw (required for nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.guicursor = ""
opt.smarttab = true
opt.hlsearch = false
opt.encoding = "UTF-8"
opt.background = "dark"
opt.cursorline = false
opt.swapfile = false
opt.mouse = ""
opt.spell = true
opt.spelllang = { "en_us" }
opt.spelloptions:append("noplainbuffer")
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.splitbelow = true
opt.splitright = true
opt.undofile = true
opt.updatetime = 250
opt.clipboard = "unnamedplus"
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.scrolloff = 8
opt.sidescrolloff = 8