local wo = vim.wo
local opt = vim.opt
local g = vim.g

-- Color scheme
vim.cmd [[colorscheme catppuccin-mocha]]

-- Line numbers
wo.number = true
wo.relativenumber = true

-- System clipboard sync
opt.clipboard = 'unnamedplus'

-- Tab spacing
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true


-- Disable netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Termguicolors
opt.termguicolors = true
opt.scrolloff = 10
