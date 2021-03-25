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
"Plug 'dart-lang/dart-vim-plugin'
" Show line indents
"TODO: remove if flutter-tools widget guides is functional Plug 'Yggdroot/indentLine'
" React highlighting
Plug 'MaxMEllon/vim-jsx-pretty'
" Common configuration for LSP
Plug 'neovim/nvim-lspconfig'
" Autocomplete goodness
Plug 'hrsh7th/nvim-compe'
" Flutter Tools
Plug 'akinsho/flutter-tools.nvim'
" Snippets
Plug 'hrsh7th/vim-vsnip'

call plug#end()
