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
  context_commentstring = { -- specially useful hybrid files containing multiple languages
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  }

}
