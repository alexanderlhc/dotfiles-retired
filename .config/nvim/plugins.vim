call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'rakr/vim-one'
" Git plugin
Plug 'tpope/vim-fugitive'
" Surround
Plug 'tpope/vim-surround'
" Code Commenting Faster
Plug 'tpope/vim-commentary'
" Fuzzy finder
Plug 'junegunn/fzf.vim'
" Easier movement through (default 's' mapping)
Plug 'justinmk/vim-sneak'
" Assistance with build jobs and such
Plug 'tpope/vim-dispatch'
" Dart/Flutter support
Plug 'dart-lang/dart-vim-plugin'
" Show line indents
Plug 'Yggdroot/indentLine'
" React highlighting
Plug 'MaxMEllon/vim-jsx-pretty'

call plug#end()
