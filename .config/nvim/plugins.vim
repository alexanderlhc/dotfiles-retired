call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'rakr/vim-one'
" Git plugin
Plug 'tpope/vim-fugitive'
" Fuzzy finder
Plug 'junegunn/fzf.vim'
" IntelliSense
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

call plug#end()


let g:coc_global_extensions = [
  \ 'coc-vimlsp',
  \ 'coc-texlab',
  \ 'coc-tsserver',
  \ 'coc-diagnostic',
  \ 'coc-git',
  \ 'coc-snippets'
  \]
