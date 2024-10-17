local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
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

-- Save and format
map("n", "<leader>w", FormatAndSave)

-- Exit
map("n", "<leader>q", ":q<CR>")

-- Netrw
map("n", "<leader>e", ":Explore<CR>")

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
map('n', 'gr', vim.lsp.buf.references, opts)

-- Cmp
local cmp = require('cmp')
map('n', '<C-Space>', cmp.mapping.complete, opts)
-- map('i', '<Tab>', cmp.mapping.select_next_item, opts)
--map('i', '<S-Tab>', cmp.mapping.select_prev_item, opts)
--map('i', '<CR>', cmp.mapping.confirm, opts)

-- Telescope
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader>fg', builtin.live_grep, {})
map('n', '<leader>fb', builtin.buffers, {})

-- Buffer management
map('n', '<leader>bd', ':bd<CR>')
map('n', '<Tab>', ':bn<CR>')
map('n', '<S-Tab>', ':bp<CR>')

-- Neorg
map('n', 'nj', ':Neorg journal yesterday<CR>')
map('n', 'nk', ':Neorg journal today<CR>')
map('n', 'nl', ':Neorg journal tomorrow<CR>')
