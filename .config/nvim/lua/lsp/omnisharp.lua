local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/bin/omnisharp"

require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}


vim.cmd("nnoremap <silent> K :OmniSharpDocumentation<CR>")

require'lspconfig'.omnisharp.setup{}
