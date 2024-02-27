-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

    use { "ibhagwan/fzf-lua",
      -- optional for icon support
      requires = { "nvim-tree/nvim-web-devicons" }
    }
    use({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
          vim.cmd('colorscheme rose-pine')
      end
    })

    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("nvim-treesitter/nvim-treesitter-context");
    use('winston0410/commented.nvim')
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
    use('Exafunction/codeium.vim')

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
    -- nvim v0.7.2
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            local header = {
                   "  █████╗ ██████╗  ██████╗██╗  ██╗██╗   ██╗██╗███╗   ███╗ ",
                   " ██╔══██╗██╔══██╗██╔════╝██║  ██║██║   ██║██║████╗ ████║ ",
                   " ███████║██████╔╝██║     ███████║██║   ██║██║██╔████╔██║ ",
                   " ██╔══██║██╔══██╗██║     ██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
                   " ██║  ██║██║  ██║╚██████╗██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
                   " ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
            }
            require('dashboard').setup {
                theme = 'hyper',
                config = {
                    header = header,
                }
            }  
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }   
    use('CRAG666/code_runner.nvim')
end)

