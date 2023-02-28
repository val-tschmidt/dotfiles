-- -----------------------------------------
-- Plugins
-- -----------------------------------------

vim.cmd([[
  " Automatically install vim-plug
  let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
  if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

  call plug#begin(data_dir . '/plugins')
]])

require('plugins.airline')
require('plugins.coffeescript')
require('plugins.commentary')
require('plugins.fugitive')
require('plugins.heritage')
require('plugins.lastplace')
require('plugins.lspconfig')
require('plugins.nerdtree')
require('plugins.rails')
require('plugins.slim-rails')
require('plugins.surround')
require('plugins.telescope')
require('plugins.treesitter')
require('plugins.vue')

require('plugins.themes.iceberg')

vim.cmd([[
  call plug#end()
  doautocmd User PlugLoaded
]])

-- Require after plug files below

require('plugins.after.airline')
require('plugins.after.telescope')
