local prettier = {formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true}


-- Format on Save
vim.lsp.handlers["textDocument/formatting"] = function(err, _, result, _, bufnr)
    if err ~= nil or result == nil then
        return
    end
    if not vim.api.nvim_buf_get_option(bufnr, "modified") then
        local view = vim.fn.winsaveview()
        vim.lsp.util.apply_text_edits(result, bufnr)
        vim.fn.winrestview(view)
        if bufnr == vim.api.nvim_get_current_buf() then
            vim.api.nvim_command("noautocmd :update")
        end
    end
end

local on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()]]
        vim.api.nvim_command [[augroup END]]
    end
end

require"lspconfig".efm.setup {
    -- init_options = {initializationOptions},
    cmd = {vim.fn.stdpath('data') .. "/lspinstall/efm/efm-langserver"},
    init_options = {documentFormatting = true, codeAction = false},
    filetypes = {"html", "css", "json", "yaml","javascriptreact", "javascript" },
    on_attach = on_attach,
    settings = {
        rootMarkers = {".git/"},
        languages = {
            -- javascript = tsserver_args,
            -- javascriptreact = tsserver_args,
            html = {prettier},
            css = {prettier},
            json = {prettier},
            yaml = {prettier},
            javascript = {prettier},
            javascriptreact = {prettier},
            -- markdown = {markdownPandocFormat}
            -- markdown = {markdownPandocFormat, markdownlint},
        }
    }
}
