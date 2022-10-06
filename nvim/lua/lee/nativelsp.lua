-- Language Server Protocols
local on_attach = function()
    -- In normal mode, capital K will enable hover information for the current buffer only
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    -- Go to definition
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    -- Rename function names or variables in the current buffer
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
    -- Scroll forward through errors in the current file
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer=0}) 
    -- Scroll backthrough errors in the current file
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})
    -- Open error diagnostics in Telescope as a list
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics <CR>", {buffer=0})
end

require("nvim-lsp-installer").setup{}

-- Python - python-lsp-server https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pylsp 
require'lspconfig'.pylsp.setup{
    on_attach = on_attach, 
}

-- PHP - intelephense https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#intelephense
require'lspconfig'.intelephense.setup{
    on_attach = on_attach,
}

-- Terraform - terraform_lsp https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#terraform_lsp
require'lspconfig'.terraform_lsp.setup{
    on_attach = on_attach, 
}

-- Go - gopls https://github.com/golang/tools/tree/master/gopls
require'lspconfig'.gopls.setup{
    on_attach = on_attach,
    cmd = {'gopls', '--remote=auto'},
}
