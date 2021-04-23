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
"TODO: remove if flutter-tools widget guides is functional Plug 'Yggdroot/indentLine'
" React highlighting
Plug 'MaxMEllon/vim-jsx-pretty'
" Autocomplete goodness
Plug 'hrsh7th/nvim-compe'
" Flutter Tools
Plug 'akinsho/flutter-tools.nvim'
" Required by flutter-tools
Plug 'nvim-lua/plenary.nvim'
" Snippets
Plug 'hrsh7th/vim-vsnip'
" https://github.com/lewis6991/gitsigns.nvim
" Code Actions Light bulb
Plug 'kosayoda/nvim-lightbulb'
" SQL Languageserver
" requires: 'go get github.com/lighttiger2505/sqls'
Plug 'nanotee/sqls.nvim'
""""
" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'glepnir/lspsaga.nvim'

call plug#end()
