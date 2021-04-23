local lsp_config = {}

vim.cmd("nnoremap gD <cmd>lua vim.lsp.buf.declaration()<CR>")
vim.cmd("nnoremap gd <cmd>lua vim.lsp.buf.definition()<CR>")
vim.cmd("nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>")
vim.cmd("nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>")
vim.cmd("nnoremap <silent><leader>ca :Lspsaga code_action<CR>")
vim.cmd("vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>")
vim.cmd("nnoremap <silent> K :Lspsaga hover_doc<CR>")
vim.cmd("nnoremap <silent> <F2> :Lspsaga rename<CR>")

local function documentHighlight(client, bufnr)
    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec(
            [[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=#464646
      hi LspReferenceText cterm=bold ctermbg=red guibg=#464646
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=#464646
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
            false
        )
    end
end


function lsp_config.common_on_attach(client, bufnr)
    documentHighlight(client, bufnr)
end


return lsp_config
---------
--local nvim_lsp = require('lspconfig') -- for readability
--
--local on_attach = function(client, bufnr)
--  -- helpers
--  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--  --local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
--
--  -- mappings (should be moved)
--  local opts = { noremap=true, silent=true }
--  -- buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
--  buf_set_keymap('n', 'ga', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
--  buf_set_keymap('n', '<space>d', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
--
--  if client.resolved_capabilities.document_formatting then
--    buf_set_keymap("n", "==", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
--  elseif client.resolved_capabilities.document_range_formatting then
--    buf_set_keymap("n", "==", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
--  end
--
--  -- Highlight for current text position
--  -- todo: slow!
--  if client.resolved_capabilities.document_highlight then
--    vim.api.nvim_exec([[
--      hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
--      hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
--      hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
--      augroup lsp_document_highlight
--        autocmd! * <buffer>
--        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
--        autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()
--        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
--      augroup END
--    ]], false)
--  end
--end
--
--local servers = { "tsserver", "pyright", "texlab" }
--
---- setup each server and map on_attach bindings
--for _, lsp in ipairs(servers) do
--  nvim_lsp[lsp].setup { on_attach = on_attach }
--end
--
---- Installed as vim plugin
--require("flutter-tools").setup{
--  widget_guides = {
--    enabled = true,
--  },
--  flutter_path = "/opt/flutter/bin/flutter",
--  dev_log = {
--    open_cmd = "tabedit"
--  },
--  experimental = {
--    lsp_derive_paths = true,
--  },
--  lsp = {
--    on_attach = on_attach
--  }
--}
--
--require'lspconfig'.sqls.setup{
--    on_attach = function(client)
--        client.resolved_capabilities.execute_command = true
--
--        require'sqls'.setup{}
--    end
--}
--
--DATA_PATH = vim.fn.stdpath('data')
--
--require'lspconfig'.tsserver.setup {
--    cmd = {DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server", "--stdio"},
--    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
--    on_attach = nvim_lsp.tsserver_on_attach,
--    -- This makes sure tsserver is not used for formatting (I prefer prettier)
--    -- on_attach = require'lsp'.common_on_attach,
--    root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
--    settings = {documentFormatting = false},
--    handlers = {
--        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--            virtual_text = O.tsserver.diagnostics.virtual_text,
--            signs = O.tsserver.diagnostics.signs,
--            underline = O.tsserver.diagnostics.underline,
--            update_in_insert = true
--
--        })
--    }
--}
