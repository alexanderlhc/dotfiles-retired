-- Formatters
local prettier = {formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true}

local eslint = {
    lintCommand = "./node_modules/.bin/eslint -f unix --stdin --stdin-filename ${INPUT}",
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"},
    formatCommand = "./node_modules/.bin/eslint --fix-to-stdout --stdin --stdin-filename=${INPUT}",
    formatStdin = true
}


-- Format on Save
-- source: https://www.reddit.com/r/neovim/comments/jvisg5/lets_talk_formatting_again/?utm_source=share&utm_medium=web2x&context=3
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
    cmd = {vim.fn.stdpath('data') .. "/lspinstall/efm/efm-langserver"},
    init_options = {documentFormatting = true, codeAction = false},
    on_attach = on_attach,
    filetypes = {"html", "css", "json", "yaml", "javascript" },
    settings = {
        rootMarkers = {".git/"},
        languages = {
            html = {prettier},
            css = {prettier},
            json = {prettier},
            yaml = {prettier},
            javascript = {prettier, eslint},
            -- javascriptreact = {prettier},
        }
    }
}
