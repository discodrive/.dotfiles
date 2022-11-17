-- Language Server Protocols
local on_attach = function()

    local opts = {buffer=0}

    -- In normal mode, capital K will enable hover information for the current buffer only
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    -- Go to definition
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) 
    -- Rename function names or variables in the current buffer
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)
    -- Scroll forward through errors in the current file
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, opts) 
    -- Scroll backthrough errors in the current file
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, opts)
    -- Open error diagnostics in Telescope as a list
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics <CR>", opts) 
    -- Get definition
    vim.keymap.set("n", "<leader>gd", "<cmd>Telescope lsp_references <CR>", opts)
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

-- Astro
require'lspconfig'.astro.setup{
    on_attach = on_attach,
}
