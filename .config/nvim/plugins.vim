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
" IntelliSense
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" Easier movement through (default 's' mapping)
Plug 'justinmk/vim-sneak'

call plug#end()


let g:coc_global_extensions = [
  \ 'coc-vimlsp',
  \ 'coc-texlab',
  \ 'coc-tsserver',
  \ 'coc-diagnostic',
  \ 'coc-git',
  \ 'coc-snippets'
  \]
