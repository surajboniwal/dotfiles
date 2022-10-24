require('lualine').setup({
    options = {
        theme = 'tokyonight'
    }
})

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "dart", "lua", "go" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,

    disable = {},

    additional_vim_regex_highlighting = false,
  },
}
