-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Colorscheme
    use {
        'navarasu/onedark.nvim',
    }

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    -- Undotree
    use('mbbill/undotree')

    -- Git
    use('tpope/vim-fugitive')
    use 'airblade/vim-gitgutter'

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {"nvimtools/none-ls.nvim"},
            {"nvimtools/none-ls-extras.nvim"},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- Toogle Term
    use("akinsho/toggleterm.nvim")

    -- Transparent Background
    use("xiyaowong/transparent.nvim")

    -- Autopairs
    use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup({})
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp = require("cmp")
        cmp.event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done())
    end
    }

    -- Todo Comments
    use 'folke/todo-comments.nvim'

    -- Scroll
    use 'karb94/neoscroll.nvim'

    -- Icons
    use({
        'nvim-tree/nvim-web-devicons',
        config = function()
            require('nvim-web-devicons').setup()
        end
    })

    -- Markdown
    use({
        'MeanderingProgrammer/render-markdown.nvim',
        after = { 'nvim-treesitter' },
        -- requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
        -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
        config = function()
            require('render-markdown').setup({})
        end,
    })

    -- HTML
    use("windwp/nvim-ts-autotag")

    -- JS/TS
    use({
        "jose-elias-alvarez/nvim-lsp-ts-utils",
        requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    })

    -- .NET
    use("Hoffs/omnisharp-extended-lsp.nvim")
    use("OmniSharp/omnisharp-vim")
end)
