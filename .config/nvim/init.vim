""" Mappings
let mapleader=" "


""" Settings

" Customization for known filetypes
"
" Reads filetype:
" - ftplugin: if exist `ftplugin/language.vim`
" - indent: if exist `indent/language.vim`  
filetype indent plugin on
" Enables syntax highlighting
syntax on

""" Visuals
" highlight current line
set cursorline
" fold based on indentation
set foldmethod=indent
" folding is unfolded unless told otherwise
set foldlevelstart=132
" end of buffer (bottom of file) ~ char is removed
set fillchars+=eob:\ 
