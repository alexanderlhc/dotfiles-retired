" Remove trailing whitespace on save
" substitude \s (whitespace(s)) with nothing if found as last character
" e means end of match
autocmd BufWritePre,FileWritePre * %s/\s\+$//e
