-- Language Server Protocols

-- Python - python-lsp-server https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pylsp 
require'lspconfig'.pylsp.setup{}

-- PHP - intelephense https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#intelephense
require'lspconfig'.intelephense.setup{}

-- Terraform - terraform_lsp https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#terraform_lsp
require'lspconfig'.terraform_lsp.setup{}

