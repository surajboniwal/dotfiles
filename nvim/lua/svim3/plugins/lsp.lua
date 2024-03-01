return {
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim"
        },
        opts = {},
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp"
        },
        opts = {
        },
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            require('lspconfig').pyright.setup{
                capabilities = capabilities,
            }

            require('lspconfig').tsserver.setup{
                capabilities = capabilities,
            }
        end,
    }
}
