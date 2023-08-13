local g = vim.g
local o = vim.o
local wo = vim.wo
local opt = vim.opt
local cmd = vim.cmd

g.mapleader = " "

wo.number = true
wo.relativenumber = true

o.scrolloff = 8

cmd.colorscheme "catppuccin-mocha"

o.updatetime = 250
o.timeoutlen = 300

-- sync clipboard with system
opt.clipboard = "unnamedplus"
