" Start with blank canvas: clear prev highlight and syntax
highlight clear 
if exists("syntax_on") 
 syntax reset 
endif

set background=light
let g:colors_name = "jane"

set termguicolors

" function grapped from
" 	https://www.codementor.io/@sandeepkumar4/vimleaning-how-to-create-vim-color-scheme-j7lmp1xkc
function!  s:GuiFor(group, ...)
  let histring = 'hi ' . a:group . ' '

  if a:0 >= 1 && strlen(a:1)
    let histring .= 'guibg=' . a:1 . ' '
  else
    let histring .= 'guibg=NONE '
  endif

  if a:0 >= 2 && strlen(a:2)
    let histring .= 'guifg=' . a:2 . ' '
  else
    let histring .= 'guifg=NONE '
  endif

  if a:0 >= 3 && strlen(a:3)
    let histring .= 'gui=' . a:3 . ' '
  else
    let histring .= 'gui=NONE '
  endif

  execute histring
endfunction

call s:GuiFor("Normal", "#ffffff", "#000000")
