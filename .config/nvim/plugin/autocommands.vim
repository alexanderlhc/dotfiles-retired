" Remove trailing whitespace on save
" substitude \s (whitespace(s)) with nothing if found as last character
" e means end of match
autocmd BufWritePre,FileWritePre * %s/\s\+$//e

" Git
autocmd FileType gitcommit setlocal spell
autocmd FileType gitcommit setlocal foldmethod=syntax foldlevel=1

" Centering screen when entering insert mode
autocmd InsertEnter * norm zz
