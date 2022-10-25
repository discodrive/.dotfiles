-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerCompile
  augroup end
]])


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'kyazdani42/nvim-web-devicons'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Debugging
  use 'mfussenegger/nvim-dap'
  use {"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}}
  use {
      'leoluz/nvim-dap-go',
      config = function() require("dap-go").setup({}) end
  }

  use {
    "nathom/filetype.nvim",
    config = function()
        require("filetype").setup {
            overrides = {
                extensions = {
                    tf = "terraform",
                    tfvars = "terraform",
                    tfstate = "json",
                },
            },
        }
    end,
  }

  -- Local plugins
  use "~/plugins/nvim-lua-plugin"

end)

