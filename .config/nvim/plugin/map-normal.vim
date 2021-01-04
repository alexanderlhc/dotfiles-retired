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
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

""""""
" Function Keys F1-F12

" View action for code under cursor
nnoremap <silent><nowait> <F2> :<C-u>CocAction<cr>



""""""
" ALT

" Moves lines n-length in either up (k) or down (j) direction
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
