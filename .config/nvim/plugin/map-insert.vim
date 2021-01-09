""""""
" Vanilla

" Tab triggers completion on current word
" if options are not visible
"   * then show dropdown
"   else
"   * cycle through
"   if visible cancel on backspace
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" Jump to next placeholder (c-j default in coc.nvim)
let g:coc_snippet_next = '<c-j>'

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

""""""
" ALT

" Moves lines n-length in either up (k) or down (j) direction
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
