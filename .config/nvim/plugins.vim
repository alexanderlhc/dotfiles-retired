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
" Assistance with build jobs and such
Plug 'tpope/vim-dispatch'

call plug#end()


let g:coc_global_extensions = [
  \ 'coc-vimlsp',
  \ 'coc-texlab',
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-diagnostic',
  \ 'coc-git',
  \ 'coc-snippets',
  \ 'coc-omnisharp',
  \ 'coc-pyright',
  \ 'coc-java',
  \ 'coc-flutter'
  \]
