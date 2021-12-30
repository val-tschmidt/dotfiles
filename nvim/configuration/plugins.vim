"------------------------------------------------
" Plugins
"------------------------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

" source plugin files below
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/coffeescript.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/heritage.vim
source ~/.config/nvim/plugins/lastplace.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/rails.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/treesitter.vim
source ~/.config/nvim/plugins/vue.vim

source ~/.config/nvim/plugins/themes/github.vim

call plug#end()
doautocmd User PlugLoaded

" source after plug files below
source ~/.config/nvim/plugins/after/telescope.vim
