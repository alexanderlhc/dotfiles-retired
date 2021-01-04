""""""
" Vanilla

" If jumps is greater than 5, set mark to allow for
" CTRL-o jump back
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'

""""""
" Function Keys F1-F12

" View action for code under cursor
nnoremap <silent><nowait> <F2> :<C-u>CocAction<cr>



""""""
" ALT

" Moves lines n-length in either up (k) or down (j) direction
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
