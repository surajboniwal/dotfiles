local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Disable arrow
map("", "<up>", "<nop>")
map("", "<down>", "<nop>")
map("", "<right>", "<nop>")
map("", "<left>", "<nop>")

-- Exit insert mode
map("i", "jk", "<Esc>")

-- Save
map("n", "<leader>w", ":w<CR>")

-- Exit
map("n", "<leader>q", ":q<CR>")

-- Netrw
map("n", "<leader>e", ":E<CR>")

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')


-- LSP
map('n', 'gD', vim.lsp.buf.declaration, opts)
map('n', 'gd', vim.lsp.buf.definition, opts)
map('n', 'K', vim.lsp.buf.hover, opts)
map('n', 'gi', vim.lsp.buf.implementation, opts)
map('n', 'gf', vim.lsp.buf.format, opts)
map('n', 'ga', vim.lsp.buf.code_action, opts)

-- Cmp
local cmp = require('cmp')
map('n', '<C-Space>', cmp.mapping.complete, opts)

-- Telescope
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader>fg', builtin.live_grep, {})
map('n', '<leader>fb', builtin.buffers, {})

-- Buffer management
map('n', '<leader>bd', ':bd<CR>')
map('n', '<leader>bn', ':bn<CR>')
map('n', '<leader>bp', ':bp<CR>')
