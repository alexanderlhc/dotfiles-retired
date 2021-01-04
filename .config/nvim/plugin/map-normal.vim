""""""
" Function Keys F1-F12

" View action for code under cursor
nnoremap <silent><nowait> <F2> :<C-u>CocAction<cr>



""""""
" ALT

" Moves lines n-length in either up (k) or down (j) direction
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
