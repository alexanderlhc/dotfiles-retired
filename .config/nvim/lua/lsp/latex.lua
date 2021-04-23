require'lspconfig'.texlab.setup{
    cmd = {vim.fn.stdpath('data') .. "/lspinstall/latex/texlab"},
    on_attach = require'lsp'.common_on_attach
}
