-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    --
    --
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "yonlu/omni.vim", as = "omni" }
    use('wbthomason/packer.nvim')
    use { "folke/tokyonight.nvim", as = "tokyonight" }
    use('elkowar/yuck.vim')
    use 'xiyaowong/transparent.nvim'

    --Telescope configs
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    --Telescope Media
    use 'nvim-lua/popup.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'

    use('mbbill/undotree')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('tpope/vim-fugitive')

    --LSP Configs
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        } }
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lua'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'

    use({
        'ray-x/navigator.lua',
        requires = {
            { 'ray-x/guihua.lua',     run = 'cd lua/fzy && make' },
            { 'neovim/nvim-lspconfig' },
        },
    })

    --- Language servers from neovim
    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim' }

    --Rust
    use 'mrcjkb/rustaceanvim'

    --Filetree mgmt & code window
    use({
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup()
        end,
    })
    use {
        'gorbit99/codewindow.nvim',
        config = function()
            local codewindow = require('codewindow')
            codewindow.setup()
            codewindow.apply_default_keybinds()
        end,
    }

    use 'NvChad/nvim-colorizer.lua'
    --Somenotifs config
    use 'rcarriga/nvim-notify'
    use 'MunifTanjim/nui.nvim'
    use 'folke/noice.nvim'
    use {
        "startup-nvim/startup.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require "startup".setup()
        end
    }

    use 'nvim-tree/nvim-web-devicons'
    use { "shortcuts/no-neck-pain.nvim" }
    use 'christoomey/vim-tmux-navigator'
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    use 'habamax/vim-godot'
    --use {'neoclide/coc.nvim', branch = 'release'}
    use 'liuchengxu/vista.vim'
    use 'fatih/vim-go'

    use({
        "epwalsh/obsidian.nvim",
        tag = "*", -- recommended, use latest release instead of latest commit
        requires = {
            -- Required.
            "nvim-lua/plenary.nvim",

            -- see below for full list of optional dependencies 👇
        },
        config = function()
            require("obsidian").setup({
                workspaces = {
                    {
                        name = "Notes",
                        path = "~/Documents/Notes",
                    },
                },
                templates = {
                    subdir = "Templates", },

                -- see below for full list of options 👇
            })
        end,
    })

    use 'lambdalisue/suda.vim'
use('MunifTanjim/prettier.nvim')
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
end)
