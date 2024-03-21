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

            require('mason-lspconfig').setup_handlers({
                function(server)
                    require('lspconfig')[server].setup({
                        capabilities = capabilities
                    })
                end,
            })

            -- require('lspconfig').pyright.setup{
            --     capabilities = capabilities,
            -- }
            --
            -- require('lspconfig').tsserver.setup{
            --     capabilities = capabilities,
            -- }
            --
            -- require('lspconfig').gopls.setup{
            --     capabilities = capabilities,
            -- }
            --
            -- require('lspconfig').lua.setup{
            --     capabilities = capabilities,
            -- }
            --
            -- require('lspconfig').terraformls.setup{
            --     capabilities = capabilities,
            -- }
        end,
    }
}
