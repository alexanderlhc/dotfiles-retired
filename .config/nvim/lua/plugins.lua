-- TODO:
--  1. Consider following plugins:
--       * 'dart-lang/dart-vim-plugin'
--       * 'MaxMEllon/vim-jsx-pretty'
--       * 'akinsho/flutter-tools.nvim'
--       * 'nvim-lua/plenary.nvim'
--       * 'kosayoda/nvim-lightbulb'
--       * 'hrsh7th/vim-vsnip-integ'
--       *  'Neevash/awesome-flutter-snippets'

-- Automatically add packer to "path" {{{
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end
-- }}}

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use {'rakr/vim-one'}
  use {'endel/vim-github-colorscheme'}

  -- Git
  use {'tpope/vim-fugitive'}

  -- Surroundings aware
  use {'tpope/vim-surround'}

  -- Fuzzy Finder Magic
  use {'junegunn/fzf.vim'}

  -- Faster navigation
  use {'chaoren/vim-wordmotion', {'justinmk/vim-sneak'}}

  -- Comments toggle and filetype
  use {'tpope/vim-commentary'}

  -- Autocomplete
  use {
    'hrsh7th/nvim-compe',
    requires = {
      {'hrsh7th/vim-vsnip'},
      {'rafamadriz/friendly-snippets'}
    }, as = 'compe'
  }

  -- Language Server Protocol
  use {'neovim/nvim-lspconfig', 'kabouzeid/nvim-lspinstall', 'glepnir/lspsaga.nvim'}

  -- Smoother Tmux integration
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      {'romgrk/nvim-treesitter-context'}, -- provides: TSContextEnable and TSContextDisable
      {'JoosepAlviste/nvim-ts-context-commentstring'}, -- set commentstring depending on context, paires well with vim-commentary
      {'p00f/nvim-ts-rainbow'}
    }
  }

  -- dart
  use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'dart-lang/dart-vim-plugin' }

  -- csharp
  use {'OmniSharp/omnisharp-vim'}

  -- File browser
  use {'lambdalisue/fern.vim'}


  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

end)
