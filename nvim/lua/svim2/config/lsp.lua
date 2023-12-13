local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
    lsp.buffer_autoformat()
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.setup()

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp.default_setup,
  },
})
