""" Mappings
let mapleader=" "

""" Settings
" scroll when reaching last 3 lines
set scrolloff=3
" cursor can move outside text in virtual block mode
set virtualedit=block
" Customization for known filetypes
"
" Reads filetype:
" - ftplugin: if exist `ftplugin/language.vim`
" - indent: if exist `indent/language.vim`
filetype indent plugin on
" Enables syntax highlighting
syntax on
" use space as tab
set expandtab
" 2 spaces per tab
set tabstop=2
set softtabstop=2
set shiftwidth=2
" hide buffer when abandoning
set hidden
"🐭 🧀 (this will be our secret). Enables mouse: resize, select, close and nav
set mouse=a

""" Visuals
set background=light
" colorscheme "one" has italics for comments
let g:one_allow_italics = 1
colorscheme one
" highlight current line
set cursorline
" fold based on indentation
set foldmethod=indent
" folding is unfolded unless told otherwise
set foldlevelstart=132
" unless told otherwise end of buffer (bottom of file) ~ char is removed
set fillchars+=eob:\

" show whitespace
set list
" tab character expands as: ▷┅┅┅
set listchars+=tab:▷┅
" extend and precede: shown when line is longer than screen
set listchars+=extends:»
set listchars+=precedes:«
" trailing spaces
set listchars+=trail:•
" non-breakable space character (don't break: 100⦸km)
set listchars+=nbsp:⦸

" show line number
set number

lua << EOF
require('plugins')
require('lsp')
require('lsp.js-ts')
require('lsp.latex')
require('lsp.efm')
require('plugin-compe')
EOF
