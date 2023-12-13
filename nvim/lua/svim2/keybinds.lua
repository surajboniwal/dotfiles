local g = vim.g

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

----------------------------------------------------
-- Neovim
----------------------------------------------------

-- Leader setup
g.mapleader = " "
g.maplocalleader = " "


-- Disable arrow
map("", "<up>", "<nop>")
map("", "<down>", "<nop>")
map("", "<right>", "<nop>")
map("", "<left>", "<nop>")

-- Exit insert mode
map("i", "jk", "<Esc>")

-- Save
map("n", "<leader>w", ":w<CR>")

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')


----------------------------------------------------
-- nvim-tree
----------------------------------------------------

map("n", "<leader>b", ":NvimTreeToggle<CR>")


----------------------------------------------------
-- barbar
----------------------------------------------------

map("n", "<Tab>", ":BufferNext<CR>")
map("n", "<S-Tab>", ":BufferPrevious<CR>")


----------------------------------------------------
-- telescope
----------------------------------------------------
local telescope = require("telescope.builtin")

map("n", "<leader>ff", function() telescope.find_files() end)
