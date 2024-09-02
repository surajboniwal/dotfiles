-- Format and save
function FormatAndSave()
    -- Format buffer
    vim.lsp.buf.format()
    -- Save
    vim.cmd("w")
end
