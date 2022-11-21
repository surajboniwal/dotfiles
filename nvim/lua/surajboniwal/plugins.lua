return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Colortheme
    use 'folke/tokyonight.nvim'

    -- Sidebar tree
    use 'preservim/nerdtree'

    -- Topbar
    use 'nvim-tree/nvim-web-devicons'
    use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

    -- Bottombar
    use {
        'nvim-lualine/lualine.nvim',
        wants = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    --Fuzzy file finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {'neoclide/coc.nvim', branch = 'release'}

end)
