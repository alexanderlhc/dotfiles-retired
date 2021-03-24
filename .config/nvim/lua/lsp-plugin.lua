local nvim_lsp = require('lspconfig') -- for readability

local on_attach = function(client, bufnr)
  -- helpers
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  --local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- mappings (should be moved)
  local opts = { noremap=true, silent=true }
  -- buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<space>d', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "==", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "==", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
  end

  -- Highlight for current text position
  -- todo: slow!
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

local servers = { "tsserver", "pyright", "texlab" }

-- setup each server and map on_attach bindings
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach }
end

-- Installed as vim plugin
require("flutter-tools").setup{
  widget_guides = {
    enabled = false,
  },
  dev_log = {
    open_cmd = "tabedit"
  },
  lsp = {
    on_attach = on_attach
  }
}
