local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n","<C-b>",":NERDTreeToggle<CR>" ,opts)

-- Move to previous/next
map('n', '<C-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<C-.>', '<Cmd>BufferNext<CR>', opts)


--Fuzzy finder
map('n', '<C-p>', '<Cmd>:Telescope find_files<CR>', opts)

