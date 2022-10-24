local A = vim.api

local num_au = A.nvim_create_augroup('SURAJBONIWAL', { clear = true })

A.nvim_create_autocmd('TextYankPost', {
    group = num_au,
    callback = function()
        vim.highlight.on_yank({ higroup = 'Visual' })
    end,
})
