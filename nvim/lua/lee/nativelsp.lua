-- Language Server Protocols

-- Python - python-lsp-server https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pylsp 
require'lspconfig'.pylsp.setup{}

-- PHP - intelephense https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#intelephense
require'lspconfig'.intelephense.setup{
    on_attach = function()
        -- In normal mode, capital K will enable hover information for the current buffer only
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    end,
}

-- Terraform - terraform_lsp https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#terraform_lsp
require'lspconfig'.terraform_lsp.setup{}

