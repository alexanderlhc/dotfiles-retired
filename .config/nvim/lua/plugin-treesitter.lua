vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- all maintained parsers
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
}
