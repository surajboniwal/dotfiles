require("bufferline").setup{
    options = {
        hover = {
            enabled = true,
            delay = 150,
            reveal = {'close'}
        },
        diagnostics = "nvim_lsp"
    }
}
