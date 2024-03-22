-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    use { "ibhagwan/fzf-lua",
        -- optional for icon support
        requires = { "nvim-tree/nvim-web-devicons" }
    }
    --  use { "rose-pine/neovim", as = "rose-pine" }
    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
    use("theprimeagen/harpoon")
    use 'romgrk/barbar.nvim'
    use("mbbill/undotree")
    use("nvim-treesitter/nvim-treesitter-context");
    use('winston0410/commented.nvim')
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  -- Packer can manage itself
        require("toggleterm").setup()
    end}
    use('Exafunction/codeium.vim')
    use('mfussenegger/nvim-dap')
    use { "nvim-neotest/nvim-nio" }
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use('theHamsta/nvim-dap-virtual-text')
    use('mfussenegger/nvim-dap-python')
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
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
          -- Snippets
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
    }
    use('maxmx03/fluoromachine.nvim')
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use('CRAG666/code_runner.nvim')
    use {
        'barrett-ruth/live-server.nvim',
        -- 'git' is the default source, so no need to specify here
        -- 'git' : 'https://github.com/barrett-ruth/live-server.nvim',
        build = 'pnpm add -g live-server',
        cmd = { 'LiveServerStart', 'LiveServerStop' },
        config = function()
            -- Configuration function for the plugin
            require('live-server').setup()
        end,
    }
    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }
    use {
        'folke/noice.nvim',
        config = function()
        -- add any options here
        end,
        requires = {
            'MunifTanjim/nui.nvim',
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
        },
    }
    use({
        "epwalsh/pomo.nvim",
        tag = "*",  -- Recommended, use latest release instead of latest commit
        requires = {
            -- Optional, but highly recommended if you want to use the "Default" timer
            "rcarriga/nvim-notify",
        },
    })
    use('norcalli/nvim-colorizer.lua')
    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {
                { map_cr = true }
            }
        end
    }
    use ('windwp/nvim-ts-autotag')
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    use('lewis6991/gitsigns.nvim')
    use ({
        'nvimdev/lspsaga.nvim',
    })
end)

