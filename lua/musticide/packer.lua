-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('nvim-lua/plenary.nvim')
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- use({
    --     "rebelot/kanagawa.nvim",
    --     as = 'kanagawa',
    --     config = function()
    --         vim.cmd('colorscheme kanagawa')
    --     end
    -- })

    use({
        "cpea2506/one_monokai.nvim",
        config = function()
            -- vim.cmd('colorscheme one_monokai')
            require("one_monokai").setup({
                transparent = true,
                colors = {},
                themes = function(colors)
                    return {}
                end,
                italics = true,
            })
        end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage the language servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
            { 'saadparwaiz1/cmp_luasnip' },
            -- { 'rafamadriz/friendly-snippets' },
            { 'Harry-Ross/vscode-c-snippets' },
            { 'musticide/unity-snippets' },
        }
    }
    use('tpope/vim-fugitive')
    use('nvim-tree/nvim-web-devicons')
    use('feline-nvim/feline.nvim')
    use('NvChad/nvterm')
    use('ThePrimeagen/harpoon')

    use('nvim-tree/nvim-tree.lua')
    -- use('jose-elias-alvarez/null-ls.nvim')
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use('kalvinpearce/ShaderHighlight')
end)
