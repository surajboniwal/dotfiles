local g = vim.g
local o = vim.o

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

o.termguicolors = true
o.background = 'dark'

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200


-- Better editor UI
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.signcolumn = 'yes:2'
o.cursorline = true


-- Better editing experience
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 0
o.softtabstop = -1
o.clipboard = 'unnamedplus'
