call plug#begin('~/.config/nvim/plugged')

" Git plugin
Plug 'tpope/vim-fugitive'
" Fuzzy finder
Plug 'junegunn/fzf.vim'
" IntelliSense 
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

call plug#end()
