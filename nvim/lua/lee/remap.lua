local nnoremap = require("lee.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<C-f>", ":Telescope current_buffer_fuzzy_find <CR>")
nnoremap("<C-p>", ":Telescope find_files <CR>")
