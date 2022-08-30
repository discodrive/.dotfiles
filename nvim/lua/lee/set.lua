vim.opt.guicursor = ""

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs Spaces Indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.wrap = false

vim.g.mapleader = " "

-- Highlight what was yanked
vim.cmd([[hi IncSearch guifg=#000000 guibg=#FFFFFF gui=none ctermbg=cyan ctermfg=black cterm=none]])
vim.cmd([[
  augroup HighlightYank
    autocmd!
    au textyankpost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup END
]])
